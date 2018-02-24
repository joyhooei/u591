<?php
define('ROOT_PATH', str_replace('interface/tuisong/config.php', '', str_replace('\\', '/', __FILE__)));
define("GOOGLE_GCM_URL", "https://fcm.googleapis.com/fcm/send");
include_once ROOT_PATH.'inc/config.php';
include_once ROOT_PATH.'inc/config_account.php';
include_once ROOT_PATH."inc/function.php";

$key_arr = array(
    	100=>array(
    			'androidels'=>array('apiKey'=>'AAAAseXPhnk:APA91bGlI9q_tOyaSJlXEZHRQUpEGFVbV-ZkZ2cLKOeFZ3-HguGXoET_eMeMJmUsAdceF_FAZaIKwK8iT6kTkXPdt1X1mmyE61mEpVPXT6hUO4Ti6rmIQlMbjj5Y-QuGX6G1vCMYP8Bu'),
    			'iosels'=>array('apiKey'=>'pem/els.pem'),
    			'androidels2'=>array('apiKey'=>'AAAAPUCRPZU:APA91bF4_l_QuhmDeINKphVyPx27ENw_8FNEkyLJyvAl_IttVIl83johaMarrl5hUWeuaO556_whDm3hdE4z9XU3mH2rrp-STH9s907yR3_pTWTS3jBjqFO8fMKEkLF19FeBeKQXmmF9'),
    			'androidels3'=>array('apiKey'=>'AAAA6T-qdI0:APA91bFwpLq0I34_T_2oiloT4uzz88VDRmS2RhiYjSIwMqrot-gyaH_LOqn2wYyG4HZRLv0sdG2mQyrs4Fo0aKqK5zDY_2NArKvQcjyOh9R-Rtr0Za_mIy88Iz_dqv7SQrsR9LFfur9L'),
    			'androidar'=>array('apiKey'=>'AAAAAwblpDU:APA91bE1l2npmXEBJTg-o_KNU-cBqs-hClQPEooBfPHum-VWBwlyMWfbAnlAIxSL88yGdr7yCSJA4xIO8iTa2wVrihDWl-xXRkI3tdh8typME-R0rG6kt0QwbaE1z57-iVard1GXFJvJ'),
    			
    	),
);

function send_gcm_notify($reg_id,$message,$apikey,$title) {
	$fields = array(
			'to'=>		$reg_id,
			'notification'=>array(
					"body" =>"$message",
					"title" => $title,
					"icon" =>"myicon"
			)
	);
	$headers = array(
			'Authorization: key=' . $apikey,
			'Content-Type: application/json'
	);
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, GOOGLE_GCM_URL);
	curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
	$result = curl_exec($ch);
	if ($result === FALSE) {
		return 0;
	}
	if(!strpos($result,'multicast_id')){
		return 0;
	}
	curl_close($ch);
	return 1;
}
function send_apn_notify($deviceToken,$message,$apnsCert) {

	//php需要开启ssl(OpenSSL)支持
	$pass        = "1234";//证书口令
	$serverUrl   = "ssl://gateway.sandbox.push.apple.com:2195";//"ssl://gateway.sandbox.push.apple.com:2195";push服务器，这里是开发测试服务器
	$badge   = ( int ) $_GET ['badge'] or $badge = 2;
	$sound   = $_GET ['sound'] or $sound = "default";
	$body    = array('aps' => array('alert' => $message));
	$streamContext = stream_context_create();
	stream_context_set_option ( $streamContext, 'ssl', 'local_cert', $apnsCert );
	stream_context_set_option ( $streamContext, 'ssl', 'passphrase', $pass );
	$apns = stream_socket_client ( $serverUrl, $error, $errorString, 60, STREAM_CLIENT_CONNECT|STREAM_CLIENT_PERSISTENT, $streamContext);//连接服务器
	if (!$apns) {
		return 0;
	}
	$payload = json_encode ( $body );
	$msg     = chr(0) . pack('n', 32) . pack('H*', str_replace(' ', '', $deviceToken)) . pack('n', strlen($payload)) . $payload;
	$result  = fwrite ( $apns, $msg);//发送消息
	fclose ( $apns );
	if (!$result)
		return 0;
	return 1;
 }
?>