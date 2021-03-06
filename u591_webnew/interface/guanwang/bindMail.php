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
write_log(ROOT_PATH."log","guanwang_bindphone_log_","post=$post, ".date("Y-m-d H:i:s")."\r\n");

$gameId = trim($_POST['game_id']);
$accountId = trim($_POST['accountid']);
$username = trim($_POST['username']);
$code = trim($_POST['code']);
$serverid = trim($_POST['serverid']);
// $sign = trim($_POST['sign']);


$params = array(
		'username',
		'accountid',
		'code',
		'serverid',
		'game_id'
);
for ($i = 0; $i< count($params); $i++){
	if (!isset($_POST[$params[$i]])) {
		exit(json_encode(array('status'=>1, 'msg'=>'Missing '.$params[$i])));
	} else {
		if(empty($_POST[$params[$i]]))
			exit(json_encode(array('status'=>1, 'msg'=>$params[$i].' should not be empty.')));
	}
}
$email = $phone = '';
$array['code'] = $code;
if (eregi('^[_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.)+[a-z]{2,3}$', $username)){
	//邮箱登陆
	$email = $username;
} else if(strlen($username) == 11 && preg_match('/^1[34578]{1}\d{9}$/', $username)){
	//手机登陆
	$phone = $username;
} else
	exit(json_encode(array('status'=>1, 'msg'=>'mail format error.')));

	


if($code){
	$conn = SetConn('88');
	$sql = "select * from web_message where username='$username' and code='$code' and game_id='$gameId' order by id desc limit 1";
	if(false == $query = mysqli_query($conn,$sql))
		exit(json_encode(array('status'=>1, 'msg'=>'web sql error.')));
	$rs = @mysqli_fetch_assoc($query);
	if(empty($rs))
		exit(json_encode(array('status'=>1, 'msg'=>'code is not exists.')));
	
	$nowTime = time();
	if($nowTime-$rs['addtime'] > 900)
		exit(json_encode(array('status'=>1, 'msg'=>'code is invalid.')));
}

$bindtable = getAccountTable($username,'mail_bind');
$bindwhere = 'mail';
$result = bindaccount($username,$bindtable,$bindwhere,$gameId,$accountId,'email');
if($result['status'] == '0'){
	$insert_id = $result['data'];
	write_log(ROOT_PATH."log","guanwang_bindphone_successs_",$insert_id.",post=$post, ".date("Y-m-d H:i:s")."\r\n");
	$sql_game = "insert into g_phonebind (server_id,account_id,phone_id) VALUES ('$serverid','$accountId', '$username')";
	$gconn = SetConn(substr($serverid, 0,strlen($serverid)-3).'001');
	if(false == mysqli_query($gconn,$sql_game)){
		write_log(ROOT_PATH."log","guanwang_bindphone_error_",$sql_game.','.mysqli_error($gconn).",post=$post, ".date("Y-m-d H:i:s")."\r\n");
		exit(json_encode(array('status'=>1, 'msg'=>'mail is bind.')));
	}
	exit(json_encode(array('status'=>0, 'msg'=>'success')));
}
else 
	exit(json_encode(array('status'=>1, 'msg'=>'fail')));
?>