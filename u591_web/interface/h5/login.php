<?php
/**
 * Created by PhpStorm.
 * User: wangtao
 * Date: 2017/5/24
 * Time: 下午1:36
 */
include_once 'config.php';
$post = serialize($_POST);
$get = serialize($_GET);
write_log(ROOT_PATH."log","h5_login_log_","post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");

$gameId = $_REQUEST['game_id'];
$channel = $_REQUEST['user_token'];
$uids = explode('_', $_REQUEST['uid']);
$uid = isset($uids[0])?$uids[0]:0;
$channel = isset($uids[1])?$uids[1]:0;
$time = isset($uids[2])?$uids[2]:0;
if($time<time()-60*5){
	write_log(ROOT_PATH."log","h5_login_error_","timeout. post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
	exit('2 0');
}
$sign = $_REQUEST['user_token'];

if(!$channel || !$uid || !$sign){
    write_log(ROOT_PATH."log","h5_login_error_","param error. post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
    exit('2 0');
}

$signstr = $channel.$uid.$time.$key;
$mysign = md5($signstr);
if($mysign != $sign){
	write_log(ROOT_PATH."log","h5_login_error_",$signstr.",sign error, ".$sign."post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
	exit('4 0');
}
global $accountServer;
$accountConn = $accountServer[$gameId];
$conn = SetConn($accountConn);
if($conn == false){
	write_log(ROOT_PATH."log","h5_login_error_","account connect error. conn=$accountConn, ".mysqli_error($conn)." ".date("Y-m-d H:i:s")."\r\n");
	exit('3 0');
}
$channel_account = mysqli_real_escape_string($conn,$uid."@$channel");
$sql = "select id from account where channel_account='$channel_account' limit 1";
if(false == $query = mysqli_query($conn, $sql)){
	write_log(ROOT_PATH."log","h5_login_error_","mysql error. sql=$sql, ".mysqli_error($conn)." ".date("Y-m-d H:i:s")."\r\n");
	exit('3 0');
}
$result = @mysqli_fetch_assoc($query);
if($result){
	$insert_id = $result['id'];
	exit("0 $insert_id");
}
$insert_id = '';
$password = random_common();
$reg_time = date("ymdHi");
$sql_game = "insert into account (NAME,password,reg_date, channel_account) VALUES ('$channel_account','$password','$reg_time', '$channel_account')";
@mysqli_query($conn, $sql_game);
$insert_id = @mysqli_insert_id($conn);
if($insert_id){
	write_log(ROOT_PATH."log","new_account_{$channel}_log_","return=1 $insert_id, post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
	exit("1 $insert_id");
}
write_log(ROOT_PATH."log","h5_login_error_",$sql_game.",insert account error ,".mysqli_error($conn)." ".date("Y-m-d H:i:s")."\r\n");
exit("3 0");