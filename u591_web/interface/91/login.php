<?php
include_once 'config.php';
$post = serialize($_POST);
$get = serialize($_GET);

write_log(ROOT_PATH."log","91_login_all_log_","post=$post, get=$get ".date("Y-m-d H:i:s")."\r\n");
$Uin=$_REQUEST['Uin'];
$SessionId=$_REQUEST['SessionId'];

if(!$Uin || !$SessionId){
	write_log(ROOT_PATH."log","91_login_error_log_"," parameter error!, SessionId=$SessionId, Uin=$Uin, ".date("Y-m-d H:i:s")."\r\n");
	exit('2 0');
}

$Sdk = new Sdk();
$Res = $Sdk->check_user_login($Uin,$SessionId);
$Res_str = json_encode($Res);
write_log(ROOT_PATH."log","91_result_login_log", "result=$Res_str, ".date("Y-m-d H:i:s")."\r\n");
if(isset($Res['ErrorCode']) && $Res['ErrorCode'] == '1'){
	$conn = SetConn(81);
	$username=mysqli_real_escape_string($conn,$Uin.'@91');
	$sql = " select id from account where name = '$username'";
	$query=mysqli_query($conn,$sql);
	$result=array();
	if($query){
		$result=mysqli_fetch_assoc($query);
	}else{
		exit('14 0');
	}
	if($result){
		$insert_id = $result['id'];
		exit("0 $insert_id");
	}
	$insert_id='';
	$password=random_common();;
	$reg_time=date("ymdHi");
	$sql_game = "insert into account (NAME,password,reg_date, channel_account) VALUES ('$username','$password','$reg_time', '$username')";
	mysqli_query($conn,$sql_game);
	$insert_id = mysqli_insert_id($conn);mysqli_insert_id($conn);
	if($insert_id){
		write_log(ROOT_PATH."log","new_account_91_log_","91 new account login! get=$get, "."return= 1 $insert_id  ".date("Y-m-d H:i:s")."\r\n");
		exit("1 $insert_id");
	}
}
write_log(ROOT_PATH."log","91_login_error_log_"," sign error, result=$Res_str, ".date("Y-m-d H:i:s")."\r\n");
exit("4 0");
?>