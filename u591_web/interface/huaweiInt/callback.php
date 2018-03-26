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
write_log ( ROOT_PATH . "log", "huaweiInt_callback_info_", "post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );

$success = array(
		'ErrorCode'=>'1',
		'ErrorDesc'=>'处理成功',
);
$fail = array(
		'ErrorCode'=>'0',
		'ErrorDesc'=>'处理失败',
);
$data = $_REQUEST;
$status = $data ['TradeStatus'];
if ($status != '0') {
	write_log ( ROOT_PATH . "log", "huaweiInt_callback_error_", "pay status is not 0 ,post=$post,get=$get," . date ( "Y-m-d H:i:s" ) . "\r\n" );
	exit(json_encode($fail));
}

$orderId = $data ['ConsumeStreamId'];
$extendsInfo = $data ['TradeNo']; // 提取拓展信息
$extendsInfoArr = explode ( '_', $extendsInfo );
$gameId = $extendsInfoArr [0];
$serverId = $extendsInfoArr [1];
$accountId = $extendsInfoArr [2];
$extendsInfo = $data ['Note']; // 提取拓展信息
$extendsInfoArr = explode ( '_', $extendsInfo );
$type = $extendsInfoArr [0];
$isgoods = $extendsInfoArr[1];

$sign = $_REQUEST ["Signature"];
unset ( $data ['Signature'] );
ksort ( $data );
$content = urldecode(http_build_query ( $data ));

$pubKey = $key_arr [$gameId] [$type] ['publicKey'];
$openssl_public_key = @openssl_get_publickey ( $pubKey );
write_log ( ROOT_PATH . "log", "huaweiInt_callback_result_", "content={$content},sign={$sign},openssl_public_key={$openssl_public_key},post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
$ok = @openssl_verify ( $content, base64_decode ( $sign ), $openssl_public_key, OPENSSL_ALGO_SHA1 );
@openssl_free_key ( $openssl_public_key );

$result = "";

if ($ok) {
	$conn = SetConn ( 88 );
	$sql = "select rpCode from web_pay_log where OrderID = '$orderId' and game_id='$gameId' limit 1;";
	$query = mysqli_query ( $conn, $sql );
	$result = @mysqli_fetch_array ( $query );
	if ($result ['rpCode'] == 1 || $result ['rpCode'] == 10) {
		exit ( $success );
	}
	$payMoney =  $data ['Amount'] ;
	if (! $result) {
		global $accountServer;
		$accountConn = $accountServer [$gameId];
		$conn = SetConn ( $accountConn );
		$sql_account = "select  NAME,dwFenBaoID,clienttype  from account where id = '$accountId'";
		$query_account = mysqli_query ( $conn, $sql_account );
		$result_account = @mysqli_fetch_assoc ( $query_account );
		if (! $result_account ['NAME']) {
			write_log ( ROOT_PATH . "log", "huaweiInt_callback_error_", "account is not exist.  " . date ( "Y-m-d H:i:s" ) . "\r\n" );
			exit ( $fail );
		} else {
			$PayName = $result_account ['NAME'];
			$dwFenBaoID = $result_account ['dwFenBaoID'];
			$clienttype = $result_account ['clienttype'];
		}
		$conn = SetConn ( 88 );
		$Add_Time = date ( 'Y-m-d H:i:s' );
		$currency = 'USD';
		$sql = "insert into web_pay_log (CPID,PayCode,PayID,PayName,ServerID,PayMoney,OrderID,dwFenBaoID,Add_Time,SubStat,game_id,clienttype, rpCode,packageName)";
		$sql = $sql . " VALUES (186,'$currency', $accountId,'$PayName','$serverId','$payMoney','$orderId','$dwFenBaoID','$Add_Time','1','$gameId','$clienttype', '1','$isgoods')";
		if (mysqli_query ( $conn, $sql ) == False) {
			write_log ( ROOT_PATH . "log", "huaweiInt_callback_error_", "sql=$sql, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
			exit ( $fail );
		}
		$Emoney = ceil($payMoney*60);
		// write_log(ROOT_PATH."log","huawei_callback_info_","OK".date("Y-m-d H:i:s")."\r\n");
		WriteCard_money ( 1, $serverId, $Emoney, $accountId, $orderId, 8, 0, 0, $isgoods );
		// 统计数据
		global $tongjiServer;
		$tjAppId = $tongjiServer [$gameId];
		sendTongjiData ( $gameId, $accountId, $serverId, $dwFenBaoID, 0, $payMoney, $orderId, 1, $tjAppId );
		exit ( $success );
	}
	exit ( $success );
} else {
	write_log ( ROOT_PATH . "log", "huaweiInt_callback_error_", "sign error ,post=$post,get=$get," . date ( "Y-m-d H:i:s" ) . "\r\n" );
	exit ( $fail );
}


