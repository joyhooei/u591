<?php
/**
* ==============================================
* Copyright (c) 2015 All rights reserved.
* ----------------------------------------------
* 验证码修改密码 先支持手机  
* ==============================================
* @date: 2016-7-29
* @author: luoxue
* @version:
*/
include_once 'config.php';
global $mdString;
$post = serialize($_POST);
global $mdString;
write_log(ROOT_PATH."log","api_getpass_log_","post=$post, ".date("Y-m-d H:i:s")."\r\n");
$username = trim($_POST['username']);
$code = $_POST['code'];
$pass = trim($_POST['password']);
$gameId = intval($_POST['game_id']);
$sign = trim($_POST['sign']);
$params = array(
		'username',
		'password',
		'code',
		'game_id',
);
for ($i = 0; $i< count($params); $i++){
	if (!isset($_POST[$params[$i]])) {
		exit(json_encode(array('status'=>1, 'msg'=>'Missing '.$params[$i])));
	} else {
		if(empty($_POST[$params[$i]]))
			exit(json_encode(array('status'=>1, 'msg'=>$params[$i].' should not be empty.')));
	}
}

if(strlen($username) == 11 && preg_match('/^1[34578]{1}\d{9}$/', $username)){
	$bindtable = getAccountTable($username,'mobile_bind');
	$bindwhere = 'mobile';
} else{
	exit(json_encode(array('status'=>1, 'msg'=>'手机格式不正确')));
}

if(!preg_match("/^[A-Za-z0-9]{6,13}$/", $pass))
	exit(json_encode(array('status'=>1, 'msg'=>'password wrong format or length greater than 6 less than 13')));

$array['game_id'] = $gameId;
$array['username'] = $username;
$array['password'] = $pass;
$array['code'] = $code;

ksort($array);
$appKey = $key_arr[$gameId]['appKey'];
$md5Str = http_build_query($array);
$mySign = md5(urldecode($md5Str).$appKey);
if($mySign != $sign)
	exit(json_encode(array('status'=>1, 'msg'=>'sign error.')));

$conn = SetConn('88');
$sql = "select addtime from web_message where username='$username' and code='$code' and game_id=$gameId  order by id desc limit 1";
if(false == $query = mysqli_query($conn,$sql))
	exit(json_encode(array('status'=>1, 'msg'=>'web server sql error.')));
$rs = @mysqli_fetch_assoc($query);
if(empty($rs) || (time()-$rs['addtime'] > 600))
	exit(json_encode(array('status'=>2, 'msg'=>'验证码不存在或已过期.')));

$password = md5($pass.$mdString);
$conn = SetConn($mygame);
$selectsql = "select accountid from $bindtable where $bindwhere = '$username' and gameid='$gameId' limit 1";
if(false == $query = mysqli_query($conn,$selectsql))
	exit(json_encode(array('status'=>1, 'msg'=>'account server sql error.')));
$result = @mysqli_fetch_assoc($query);
if(!$result){
	exit(json_encode(array('status'=>2, 'msg'=>'Account error, please enter again!')));
}
$accountid = $result['accountid'];
$acctable = betaSubTableNew($accountid,'account',999);
$sql = "select id, password from $acctable where id = '$accountid' limit 1";
if(false == $query = mysqli_query($conn,$sql)){
	exit(json_encode(array('status'=>1, 'msg'=>'account server sql error.')));
}
$result = @mysqli_fetch_assoc($query);
if(!$result){
	exit(json_encode(array('status'=>2, 'msg'=>'帐号不存在!')));
}

$accountUpdate = "update $acctable set password='$password' where id='$accountid';";
if(false ==mysqli_query($conn,$accountUpdate)){
	write_log(ROOT_PATH."log","api_getpass_error_","$accountUpdate, ".mysqli_error($conn).date("Y-m-d H:i:s")."\r\n");
	exit(json_encode(array('status'=>2, 'msg'=>'修改失败!')));
}
exit(json_encode(array('status'=>0, 'msg'=>'修改成功!')));
?>
