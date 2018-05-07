<?php
/**
* ==============================================
* Copyright (c) 2015 All rights reserved.
* ----------------------------------------------
* 官网注册接口 兼容普通账号注册 手机、邮箱验证码注册
* 暂时邮箱没有 预留着.
* ==============================================
* @date: 2016-5-6
* @author: Administrator
* @return:
*/
include_once 'config.php';
global $mdString;

$post = serialize($_POST);
write_log(ROOT_PATH."log","api_register_log_","post=$post, ".date("Y-m-d H:i:s")."\r\n");

$username = trim($_POST['username']);
$code = trim($_POST['code']);
$password = trim($_POST['password']);
$gameId = intval($_POST['game_id']);
$sign = trim($_POST['sign']);


$params = array(
		'username',
		'password',
		'game_id',
		'sign'
);
for ($i = 0; $i< count($params); $i++){
	if (!isset($_POST[$params[$i]])) {
		exit(json_encode(array('status'=>1, 'msg'=>'Missing '.$params[$i])));
	} else {
		if(empty($_POST[$params[$i]]))
			exit(json_encode(array('status'=>1, 'msg'=>$params[$i].' should not be empty.')));
	}
}
if(!empty($code)){
	$array['code'] = $code;
	if(strlen($username) == 11 && preg_match('/^1[34578]{1}\d{9}$/', $username)){
		//手机登陆
		$bindtable = getAccountTable($username,'mobile_bind');
		$bindwhere = 'mobile';
	} else{
		exit(json_encode(array('status'=>1, 'msg'=>'手机号格式不正确.'))); 
	}
} else { 
	$bindtable = getAccountTable($username,'token_bind');
	$bindwhere = 'token';
}

if(!preg_match("/^[A-Za-z0-9]{6,16}$/", $password))
	exit(json_encode(array('status'=>1, 'msg'=>'password length or wrong format.'))); 

$appKey = $key_arr[$gameId]['appKey'];
$array['username'] = $username;
$array['password'] = $password;
$array['game_id'] = $gameId;
$mySign = httpBuidQuery($array, $appKey);
if($mySign != $sign)
	exit(json_encode(array('status'=>1, 'msg'=>'sign error.')));


if($code){
	$conn = SetConn('88');
	$sql = "select * from web_message where username='$username' and game_id='$gameId' order by id desc limit 1";
	if(false == $query = mysqli_query($conn,$sql))
		exit(json_encode(array('status'=>1, 'msg'=>'web sql error.')));
	$rs = @mysqli_fetch_assoc($query);
	if(empty($rs))
		exit(json_encode(array('status'=>1, 'msg'=>'code does not exist.')));
	
	$nowTime = time();
	if($nowTime-$rs['addtime'] > 900)
		exit(json_encode(array('status'=>1, 'msg'=>'code is invalid.')));
}
$password_my=md5($password.$mdString);
$reg_time=date("ymdHi");

$conn = SetConn($mygame);
$selectsql = "select accountid from $bindtable where $bindwhere = '$username' and gameid='$gameId' limit 1";
if(false == $query = mysqli_query($conn,$selectsql))
	exit(json_encode(array('status'=>1, 'msg'=>'account server sql error.')));
$result = @mysqli_fetch_assoc($query);
if($result){
	exit(json_encode(array('status'=>1, 'msg'=>'account is registered.')));
}

$insertinfo = insertaccount($username,$bindtable,$bindwhere,$gameId,$password_my);
$insertinfo['data'] = array('account_id'=>$insertinfo['data']);
write_log(ROOT_PATH."log","api_register_result_",json_encode($insertinfo).", ".date("Y-m-d H:i:s")."\r\n");
exit(json_encode($insertinfo));
?>