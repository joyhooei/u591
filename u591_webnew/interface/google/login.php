<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2017/2/17
 * Time: 下午1:41
 */
include_once 'config.php';
include_once 'src/Google/autoload.php';

$post = serialize ( $_POST );
$get = serialize ( $_GET );
write_log ( ROOT_PATH . 'log', 'google_login_info_', "post=$post,get=$get, " . date ( 'Y-m-d H:i:s' ) . "\r\n" );

// $str = 'a:3:{s:12:"access_token";s:45:"4/fU6TpufDnEYKJ5dgD6yYir3TlXjMSF4BfmJnhRkLcL4";s:4:"type";s:6:"yuenan";s:7:"game_id";s:1:"8";}';
// $_REQUEST = unserialize($str);

$access_token = $_REQUEST ['access_token'];
$gameId = $_REQUEST ['game_id'] ? $_REQUEST ['game_id'] : 8;
$type = $_REQUEST ['type'];

if (! $access_token || ! $gameId) {
	write_log ( ROOT_PATH . "log", "google_login_error_", "param error! post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
	exit ( "2 0" ); // 参数异常
}
$data = array ();
global $key_arr;

$appId = isset ( $key_arr [$gameId] [$type] ['appId'] ) ? $key_arr [$gameId] [$type] ['appId'] : $key_arr [$gameId] ['appId'];
$appSecret = isset ( $key_arr [$gameId] [$type] ['appSecret'] ) ? $key_arr [$gameId] [$type] ['appSecret'] : $key_arr [$gameId] ['appSecret'];
$client = new Google_Client ();
$client->setClientId ( $appId );
$client->setClientSecret ( $appSecret );
$token = $client->fetchAccessTokenWithAuthCode ( $_REQUEST ['access_token'] );

if (isset ( $token ['access_token'] )) {
	$client->setAccessToken ( $token );
	if ($client->getAccessToken ()) {
		$token_data = $client->verifyIdToken ();
	}
}

$jsonRs = isset ( $token_data ) ? json_encode ( $token_data ) : json_encode ( $token );
write_log ( ROOT_PATH . 'log', 'google_login_check_', "$jsonRs, " . date ( 'Y-m-d H:i:s' ) . "\r\n" );
if (isset ( $token_data ['sub'] )) {
	$google_id = $token_data ['sub'];
	$username = $google_id . '@google';
	$bindtable = getAccountTable ( $username, 'token_bind' );
	$bindwhere = 'token';
	$insertinfo = insertaccount ( $username, $bindtable, $bindwhere, $gameId );
	if ($insertinfo ['status'] == '1') {
		write_log ( ROOT_PATH . "log", "google_login_error_", json_encode ( $insertinfo ) . ",post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
		exit ( '3 0' );
	} else {
		$insert_id = $insertinfo ['data'];
		if ($insertinfo ['isNew'] == '1') {
			exit ( "1 $insert_id" );
		} else {
			exit ( "0 $insert_id" );
		}
	}
} else {
	write_log ( ROOT_PATH . 'log', 'google_login_error_', " check error,result=$jsonRs,post=$post,get=$get, " . date ( 'Y-m-d H:i:s' ) . "\r\n" );
	exit ( "4 0" );
}