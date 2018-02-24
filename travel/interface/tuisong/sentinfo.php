<?php
include_once 'config.php';
$post = serialize($_POST);
write_log(ROOT_PATH."log","system_tuisong_log_","post=$post, ".date("Y-m-d H:i:s")."\r\n");
$accountid = $_POST['accountid'];
$message = $_POST['message'];
$num = $_POST['num']?$_POST['num']:1;
if(!$accountid || !$num || !$message){
	write_log(ROOT_PATH."log","system_tuisong_error_","param is null,post=$post ".date("Y-m-d H:i:s")."\r\n");
	exit('fail');
}
$conn = ConnServer2('traveltj.u591776.com', 'payor', 'u591*hainiu', 'sdk_dev');
if($conn == false){
	write_log(ROOT_PATH."log","system_tuisong_error_","sdk connect error,post=$post ".date("Y-m-d H:i:s")."\r\n");
	exit('fail');
}
$sql2 = "select regid,devicetype from push_regid where accountid='$accountid' limit 1";
$query2 = @mysqli_query($conn,$sql2);
$result = @mysqli_fetch_assoc($query2);
if(!isset($result['regid'])){
	write_log(ROOT_PATH."log","system_tuisong_error_","$sql2,post=$post ,".mysqli_error($conn).','.date("Y-m-d H:i:s")."\r\n");
	exit('fail');
}
$reg_id = $result['regid'];
//$message = '您有新邮件，快去看看有什么惊喜！';
$type = $result['devicetype'];

$apikey = $key_arr[$type]['apiKey'];
$secret = isset($key_arr[$type]['secret'])?$key_arr[$type]['secret']:0;
if(send_notify($type,$reg_id,$message,$apikey,$secret,$num)){
	write_log(ROOT_PATH."log","system_tuisong_success_","post=$post ".date("Y-m-d H:i:s")."\r\n");
	exit( 'success');
}else{
	write_log(ROOT_PATH."log","system_tuisong_error_","post=$post ".date("Y-m-d H:i:s")."\r\n");
	exit( 'fail');
}

function ConnServer2($db_host, $db_user, $db_pass, $db_database){
	$db = @mysqli_connect($db_host,$db_user,$db_pass, $db_database);
	if(!$db){
		$db = @mysqli_connect($db_host,$db_user,$db_pass, $db_database);
	}
	if(!$db){
		return false;
	}
	return $db;
}