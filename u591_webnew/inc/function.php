<?php
/**
 * ==============================================
 * Copyright (c) 2015 All rights reserved.
 * ----------------------------------------------
 * 登陆接口、支付回调函数
 * ==============================================
 * @date: 2016-5-6
 * @author: Administrator
 * @return:
 */
//获取帐号信息
function getaccountinfo($gameId,$accountId,$field = 'NAME,dwFenBaoID,clienttype'){
	$snum = giQSModHash($accountId);
    $conn = SetConn($gameId,$snum,1);//account分表
    $acctable = betaSubTableNew($accountId,'account',999);
    $sql = "select $field from $acctable where id=$accountId limit 1;";
    $query = mysqli_query($conn, $sql);
    $result_account = @mysqli_fetch_array($query);
    return $result_account;
}
//帐号绑定
function bindaccount($username,$bindtable,$bindwhere,$gameId,$accountId,$type='channel_account',$passwd=''){
	$snum = giQSAccountHash($username);
	$conn = SetConn($gameId,$snum);
	$bind_time=date('Y-m-d H:i:s');
	$selectsql = "select accountid from $bindtable where $bindwhere='$username' and gameid='$gameId' limit 1";
	if(false == $query = mysqli_query($conn,$selectsql))
		return array('status'=>1, 'msg'=>'account server sql error,'.mysqli_error($conn));
	$result = @mysqli_fetch_assoc($query);
	if($result){
		return  array('status'=>1, 'data'=>$result['accountid'],'noNew'=>'1','msg'=>"$username 已被注册或绑定");
	}
	$sql_game = "insert into $bindtable ($bindwhere,accountid,bindtime,gameid) VALUES ('$username','$accountId', '$bind_time','$gameId')";
	if(false == mysqli_query($conn,$sql_game)){
		return  array('status'=>1, 'msg'=>'insert account error,'.mysqli_error($conn));
	}
	$insert_id = mysqli_insert_id($conn);
	if($insert_id){
		$snum = giQSModHash($accountId);
		$myconn = SetConn($gameId,$snum,1);//account分表
		$acctable = betaSubTable($accountId,'account',999);
		$accountInsert = "update $acctable set $type='$username'".upsql." where id='$accountId';";
		if($passwd){
			$accountInsert = "update $acctable set $type='$username',password='$passwd' where id='$accountId';";
		}
		if(false ==mysqli_query($myconn,$accountInsert)){
			return array('status'=>1, 'msg'=>$accountInsert.",".mysqli_error($myconn));
		}
		return array('status'=>0, 'noNew'=>'0','data'=>$accountId,'msg'=>"$username");
	}
	else
		return array('status'=>1, 'msg'=>'fail');
}

//帐号插入
function insertaccount($username,$bindtable,$bindwhere,$gameId,$passwd=''){
	!$passwd && $passwd = random_common();

	$snum = giQSAccountHash($username);
	$conn = SetConn($gameId,$snum);//绑定分表
	$selectsql = "select accountid from $bindtable where $bindwhere = '$username' and gameid='$gameId' limit 1";
	if(false == $query = mysqli_query($conn,$selectsql))
		return array('status'=>1, 'msg'=>"$selectsql,". mysqli_error($conn));
	$result = @mysqli_fetch_assoc($query);
	if($result){
		return array('status'=>0, 'data'=>intval($result['accountid']),'isNew'=>'0');
	}
	$reg_time = date("ymdHi");
	$bind_time=date('Y-m-d H:i:s');
	$myconn = SetConn($gameId); //查询idmgr专用
	$indexInsert =  "insert into idmgr (MaxYk) VALUES ('$reg_time')";
	if(false ==  mysqli_query($myconn,$indexInsert)){
		return array('status'=>1, 'msg'=>"$indexInsert,". mysqli_error($myconn));
	}
	$accountid = mysqli_insert_id($myconn);
	$bindInsert = "insert into $bindtable ({$bindwhere},gameid,accountid,bindtime) VALUES ('$username', '$gameId','$accountid','$bind_time');";
	if(false ==  mysqli_query($conn,$bindInsert)){
		return array('status'=>1, 'msg'=>"$bindInsert,". mysqli_error($conn));
	}
	$snum = giQSModHash($accountid);
	$myconn = SetConn($gameId,$snum,1);//account分表
	$acctable = betaSubTableNew($accountid,'account',999);
	$accountInsert = "insert into $acctable (id,NAME,reg_date,gameid,password) VALUES ('$accountid','$username', '$reg_time', '$gameId','$passwd');";
	if(false == mysqli_query($myconn,$accountInsert)){
		return  array('status'=>1, 'msg'=>"$accountInsert,". mysqli_error($conn));
	}
	return array('status'=>0, 'data'=>$accountid,'isNew'=>'1');
}
// 获取ip
function getIP_front() {
	$ip = getenv('REMOTE_ADDR');
	$ip_ = getenv('HTTP_X_FORWARDED_FOR');
	if (($ip_ != "") && ($ip_ != "unknown"))
		$ip = $ip_;
	return $ip;
}
// 写日志:路径,文件名,内容
function write_log($dirName, $logName, $str) {
	$path_name = $dirName . "/" . date("ym");
	if (!is_dir($path_name))
		@mkdir ( $path_name, 0777);
	$fs = fopen ( $path_name . "/" . $logName . date ("ymd") . ".txt", "a" );
	fwrite ( $fs, $str );
	fclose ( $fs );
}
// 充值成功写入游戏库
// 参数说明：充值方式,服务区ID,充值类型,帐号ID,定单号
function WriteCard_money($tabType, $ServerID, $money, $PayID, $OrderID, $type=8, $i=0,$wap=0,$id_buygoods=0) {
	$i++;
	$sid = togetherServer($ServerID);
	$table = betaSubTable($sid, 'u_card', 1000);
	$conn = SetConn($sid);

	if($conn == false){
		gameOrder($OrderID); //更新订单状态
		write_log (ROOT_PATH."log", "card_err_", "serverId=$ServerID, game mysql connect error. ".date ("Y-m-d H:i:s")."\r\n");
		return ;
	}

	$time_stamp = date ('ymdHi');
	// 判断定单号是否重复
	$sql = "select count(*) as count from $table where ref_id='$OrderID' limit 1;";
	$query = @mysqli_query ($conn, $sql);
	if($query == false){
		write_log (ROOT_PATH."log", "card_err_", "sql=$sql, ".mysqli_error($conn)." ".date ("Y-m-d H:i:s")."\r\n");
		gameOrder($OrderID); //更新订单状态
		return ;
	}
	$rows = @mysqli_fetch_assoc($query);
	if ($rows['count'] == 0) {
		$sql = "insert into $table(data,account_id,ref_id,time_stamp,used,type,server_id";
		$mysql = " values('$money',$PayID,'$OrderID',$time_stamp,0,'$type','$ServerID'";
		if($wap == 1){
			$sql .= ',wap_flag';
			$mysql .= ",'$wap'";
		}
		if($id_buygoods){
			$sql .= ',id_buygoods';
			$mysql .= ",'$id_buygoods'";
		}
		$sql .= ')';
		$mysql .= ')';
		$sql = $sql . $mysql;

		if (mysqli_query ($conn, $sql ) == false) {
			write_log (ROOT_PATH."log", "card_err_", "sql=$sql, ".mysqli_error($conn)." ".date ("Y-m-d H:i:s")."\r\n");
			gameOrder($OrderID); //更新订单状态
			//执行失败再次请求
			if($i == 1){
				WriteCard_money($tabType, $ServerID, $money, $PayID, $OrderID, $type = 8, $i,$wap,$id_buygoods);
			}
		} else {
			write_log (ROOT_PATH."log", "card_true_", "ServerID=$ServerID,sql=$sql, ".date("Y-m-d H:i:s")."\r\n");
		}
	}
}

function gameOrder($orderId, $isUc = 1){
	$conn = SetConn (88); // 连接u591数据库
	$sql = "update web_pay_log set IsUC=$isUc where OrderID='$orderId'";
	@mysqli_query ($conn, $sql);
	@mysqli_close($conn);
}

function data_check($val) {
	if (is_array ( $val )) {
		foreach ( $val as $k => $v )
			$val [$k] = data_check ( $v );
	} else {
		if (! get_magic_quotes_gpc ()) {
			$val = addslashes ( $val );
		}
		$dstr = 'select|insert|update|delete|union|into|load_file|outfile';
		$val = eregi_replace ( $dstr, '', $val );
	}
	return $val;
}

function random_common() {
	$hash = '';
	$array = array ('~','!','@','#','$','%','^','&','*','(');
	shuffle ( $array );
	for($i = 0; $i < 3; $i ++) {
		$hash .= uniqid ( rand () ) . $array [$i];
	}
	return md5 ( md5 ( $hash ) );
}
function common_json_post($url,$data ){
	$curl = curl_init($url); // 启动一个CURL会话
	curl_setopt($curl, CURLOPT_HTTPHEADER,
			array(
					'Content-Type: application/json' ,
					'Content-Length: ' . strlen($data)
			));
	curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0); // 对认证证书来源的检查
	curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 1); // 从证书中检查SSL加密算法是否存在
	curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
	curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1); // 使用自动跳转
	curl_setopt($curl, CURLOPT_AUTOREFERER, 1); // 自动设置Referer
	curl_setopt($curl, CURLOPT_POSTFIELDS, $data); // Post提交的数据包
	curl_setopt($curl, CURLOPT_TIMEOUT, 30); // 设置超时限制防止死循环
	curl_setopt($curl, CURLOPT_HEADER, 0); // 显示返回的Header区域内容
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); // 获取的信息以文件流的形式返回
	$tmpInfo = curl_exec($curl);
	if (curl_errno($curl)) {
		return 'Errno' .curl_error($curl);
	}
	curl_close($curl);
	return $tmpInfo;
}
function https_post($url, $data, $i = 0) {
	$i++;
	$str = '';
	if ($data) {
		foreach ( $data as $key => $value ) {
			$str .= $key . "=" . $value . "&";
		}
	}
	$curl = curl_init ( $url ); // 启动一个CURL会话
	curl_setopt ( $curl, CURLOPT_SSL_VERIFYPEER, 0 ); // 对认证证书来源的检查
	curl_setopt ( $curl, CURLOPT_SSL_VERIFYHOST, 1 ); // 从证书中检查SSL加密算法是否存在
	// curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
	curl_setopt ( $curl, CURLOPT_FOLLOWLOCATION, 1 ); // 使用自动跳转
	curl_setopt ( $curl, CURLOPT_AUTOREFERER, 1 ); // 自动设置Referer
	if ($str) {
		curl_setopt ( $curl, CURLOPT_POSTFIELDS, $str ); // Post提交的数据包
	}
	curl_setopt ( $curl, CURLOPT_TIMEOUT, 5 ); // 设置超时限制防止死循环
	// curl_setopt($curl, CURLOPT_HEADER, 0); // 显示返回的Header区域内容
	curl_setopt ( $curl, CURLOPT_RETURNTRANSFER, 1 ); // 获取的信息以文件流的形式返回
	// curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
	// curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
	// curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
	$tmpInfo = curl_exec ($curl);
	$Err = curl_error($curl);
	if (false === $tmpInfo || !empty($Err)) {
		if($i == 1)
			return https_post ($url, $data, $i);
		curl_close ($curl);
		return $Err;
	}
	curl_close ($curl);
	return $tmpInfo;
}
function Sign($data){
	ksort($data);
	$md5Str = http_build_query($data);
	$mySign = md5($md5Str.'0dbddcc74ed6e1a3c3b9708ec32d0532');
	return $mySign;
}
function  giQSAccountHash( $string,$sum = 999)
{
	$string = "$string";
	$length = strlen($string);
	$result = 0;
	for($i=0;$i<$length;$i++){
		$result = ($result*397+ ord($string[$i]))%$sum;
	}
	return $result+1;
}
/**
 * 绑定分表
 * @param unknown $table
 * @param unknown $string
 * @return string
 */
function getAccountTable($string,$table,$sum = 999){
	$string = "$string";
	$length = strlen($string);
	$result = 0;
	for($i=0;$i<$length;$i++){
		$result = ($result*397+ ord($string[$i]))%$sum;
	}
	$s = sprintf('%03d', $result+1);
	return $table.$s;
}
function  giQSModHash( $accountid,$sum = 999)
{
	return $accountid%$sum+1;
}
//账服分表
function betaSubTableNew($account_id, $table, $sum=200){
	if($account_id == 0)
		return $table;
    $suffix = ($account_id%$sum)+1;
    $s = sprintf('%03d', $suffix);
    return $table.$s;
}
//游戏库分表
function betaSubTable($serverId, $table, $sum){
    $suffix = $serverId%$sum;
    $s = sprintf('%03d', $suffix);
    return $table.$s;
}

//统计数据处理
function SAddData($data){
	global $tongjiServer;
	$url = $tongjiServer[$data['appid']].'ApiPay/PaylogProcess';
	$jsonData = base64_encode(json_encode($data));
	$postData = array();
	$postData['data'] = $jsonData;
	$postData['sign'] = Sign($data);

	$rs = https_post($url, $postData);
	$rows = json_decode($rs, true);
	if(is_array($rows) && $rows['errcode'] != 0){
        write_log(ROOT_PATH."log","SAddData_error_","result=$rs, ".date("Y-m-d H:i:s")."\r\n");
	}
}

function sendTongjiData($gameId, $accountId,$serverId,$channel,$lev=0,$money,$orderId,$isNew=1,$isPay=0){
    $tongjiArr = array();
    $tongjiArr['accountid'] = $accountId;
    $tongjiArr['serverid'] = $serverId;
    if($channel){
    	$tongjiArr['channel'] = $channel;
    }
    
    $tongjiArr['lev'] = $lev;
    $tongjiArr['money'] = $money;
    $tongjiArr['orderid'] = $orderId;
    $tongjiArr['is_new'] = $isNew;
    $tongjiArr['is_pay'] = $isPay;
    $conn = SetConn(88);
    if($conn == false){
        write_log(ROOT_PATH."log","SAddData_error_","web mysql connect error. ".date("Y-m-d H:i:s")."\r\n");
        return false;
    }
    $sql = "select count(id) as count from web_pay_log where PayID=$accountId and game_id=$gameId limit 1;";
    $query = @mysqli_query($conn, $sql);
    $rows = @mysqli_fetch_array($query);
    if($rows['count'] > 1)
        $tongjiArr['is_new'] = 0;
    $tongjiArr['created_at'] = time();
    $tongjiArr['appid'] = $gameId; //$tongjiServer[$gameId];
    //发送数据
    SAddData($tongjiArr);
    return true;
}
?>