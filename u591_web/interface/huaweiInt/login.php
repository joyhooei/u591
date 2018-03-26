<?php
/**
 * Created by PhpStorm.
 * User: wangtao
 * Date: 2017/5/24
 * Time: 下午1:36
 */
include_once 'config.php';
$post = serialize ( $_POST );
$get = serialize ( $_GET );
write_log ( ROOT_PATH . "log", "huaweiInt_login_log_", "post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );

$userToken = $_REQUEST ['user_token'];
$appUid = $_REQUEST ['uid'];
$gameId = $_REQUEST ['game_id'];
$appUidArr = explode ( '_', $appUid );
$data ['uin'] = $appUidArr [0];
$data ['nonce'] = $appUidArr [1];
$data ['timestamp'] = $appUidArr [2];
$type = isset( $appUidArr [3])?$appUidArr [3]:'android';
$sign = urldecode ( $userToken );
$sign = str_replace ( ' ', '+', $sign );

if (! $data ['uin']  || ! $data ['timestamp'] || ! $sign) {
	write_log ( ROOT_PATH . "log", "huaweiInt_login_error_", "param error. post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
	exit ( '2 0' );
}
if($data ['timestamp']+60*60<time()){
	write_log ( ROOT_PATH . "log", "huaweiInt_login_error_", "timeout. post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
	exit ( '2 0' );
}
// 使用从客户端上传过来的参数
ksort ( $data );
$content = http_build_query ( $data );
$pubKey = $key_arr [$gameId] [$type] ['publicKey'];
$openssl_public_key = @openssl_get_publickey ( $pubKey );
write_log ( ROOT_PATH . "log", "huaweiInt_login_log_", "content={$content},sign={$sign},openssl_public_key={$openssl_public_key},post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
$ok = @openssl_verify ( $content, base64_decode ( $sign ), $openssl_public_key, OPENSSL_ALGO_SHA1 );
@openssl_free_key ( $openssl_public_key );
if ($ok) {
	
	// CP操作,请求成功,用户有效
	global $accountServer;
	$accountConn = $accountServer [$gameId];
	$conn = SetConn ( $accountConn );
	if ($conn == false) {
		write_log ( ROOT_PATH . "log", "huaweiInt_login_error_", "account connect error. conn=$accountConn, " . mysqli_error ( $conn ) . " " . date ( "Y-m-d H:i:s" ) . "\r\n" );
		exit ( '3 0' );
	}
	$channel_account = mysqli_real_escape_string ( $conn, $data ['uin'] . '@huaweiInt' );
	$sql = "select id from account where channel_account='$channel_account' limit 1";
	if (false == $query = mysqli_query ( $conn, $sql )) {
		write_log ( ROOT_PATH . "log", "huaweiInt_login_error_", "mysql error. sql=$sql, " . mysqli_error ( $conn ) . " " . date ( "Y-m-d H:i:s" ) . "\r\n" );
		exit ( '3 0' );
	}
	$result = @mysqli_fetch_assoc ( $query );
	if ($result) {
		$insert_id = $result ['id'];
		exit ( "0 $insert_id" );
	}
	$insert_id = '';
	$password = random_common ();
	$reg_time = date ( "ymdHi" );
	$sql_game = "insert into account (NAME,password,reg_date, channel_account) VALUES ('$channel_account','$password','$reg_time', '$channel_account')";
	@mysqli_query ( $conn, $sql_game );
	$insert_id = @mysqli_insert_id ( $conn );
	if ($insert_id) {
		write_log ( ROOT_PATH . "log", "new_account_huaweiInt_log_", "return=1 $insert_id, post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
		exit ( "1 $insert_id" );
	}
} else {
	write_log ( ROOT_PATH . "log", "huaweiInt_login_error_", "sign error, " . $sign . "post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
	exit ( '4 0' );
}
