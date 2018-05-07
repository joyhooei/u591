<?php
/**
 * Created by PhpStorm.
 * User: wangtao
 * Date: 20170524
 * Time: 上午10:02
 */
include 'config.php';
$post = serialize($_POST);
$get = serialize($_GET);
write_log(ROOT_PATH."log","h5_callback_info_","post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
$data = $_REQUEST;
$sign = $data['sign'];
unset($data['sign']);
ksort($data);
$signstr = implode('', $data).$secret;
$mysign = md5($signstr);
if($sign != $mysign) {
    write_log(ROOT_PATH."log","h5_callback_error_",$signstr.",sign error, post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
    $returnarr = ['code'=>1,'message'=>'sign error'];
    exit(json_encode($returnarr));
}
$gameId = 8;
$serverId = $data["serverid"];
$accountId = $data["accountid"];
$cpid = $data["channel"];
$giftId = $data["giftid"];
$orderId = $data['orderid'].'_'.$cpid;
$conn = SetConn(88);
$sql = "select rpCode from web_pay_log where OrderID = '$orderId' limit 1;";
$query = mysqli_query($conn, $sql);
$result = @mysqli_fetch_array($query);
if($result['rpCode']==1 || $result['rpCode']==10){
    $returnarr = ['code'=>0,'message'=>'success'];
    exit(json_encode($returnarr));
}
$payMoney = intval($data['amount']);
if(!$result){
	global $accountServer;
	$accountConn = $accountServer[$gameId];
	$conn = SetConn($accountConn);
    $sql_account = "select  NAME,dwFenBaoID,clienttype  from account where id = '$accountId'";
    $query_account = mysqli_query($conn, $sql_account);
    $result_account = @mysqli_fetch_assoc($query_account);
    if(!$result_account['NAME']){
        write_log(ROOT_PATH."log","h5_callback_error_", "account is not exist.  ".date("Y-m-d H:i:s")."\r\n");
       $returnarr = ['code'=>1,'message'=>'account is not exist'];
    	exit(json_encode($returnarr));
    }else{
        $PayName = $result_account['NAME'];
        $dwFenBaoID = $result_account['dwFenBaoID'];
        $clienttype = $result_account['clienttype'];
    }
    $conn = SetConn(88);
    $Add_Time=date('Y-m-d H:i:s');
    $sql="insert into web_pay_log (CPID,PayID,PayName,ServerID,PayMoney,OrderID,dwFenBaoID,Add_Time,SubStat,game_id,clienttype, rpCode,packageName)";
    $sql=$sql." VALUES ($cpid, $accountId,'$PayName','$serverId','$payMoney','$orderId','$dwFenBaoID','$Add_Time','1','$gameId','$clienttype', '1','$giftId')";
    if (mysqli_query($conn,$sql) == False){
        write_log(ROOT_PATH."log","h5_callback_error_","sql=$sql, ".mysqli_error($conn).date("Y-m-d H:i:s")."\r\n");
        $returnarr = ['code'=>1,'message'=>'database connect error'];
    	exit(json_encode($returnarr));
    }
    //write_log(ROOT_PATH."log","h5_callback_info_","OK".date("Y-m-d H:i:s")."\r\n");
    WriteCard_money(1,$serverId, $payMoney,$accountId, $orderId,8,0,0,$giftId);
    //统计数据
    global $tongjiServer;
    $tjAppId = $tongjiServer[$gameId];
    sendTongjiData($gameId,$accountId,$serverId,$dwFenBaoID,0,$payMoney,$orderId,1,$tjAppId);
    $returnarr = ['code'=>0,'message'=>'success'];
    exit(json_encode($returnarr));
}
$returnarr = ['code'=>0,'message'=>'success'];
 exit(json_encode($returnarr));