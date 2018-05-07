<?php
/**
* ==============================================
* Copyright (c) 2015 All rights reserved.
* ----------------------------------------------
* 短信登陆   新的接口以后都采用json 返回
* ==============================================
* @date: 2016-7-14
* @author: luoxue
* @version:
*/
include_once 'config.php';
include_once 'myEncrypt.php';
global $mdString;
$post = serialize($_POST);
$get = serialize($_GET);
write_log(ROOT_PATH."log","api_login_log_","post=$post, get=$get, ".date("Y-m-d H:i:s")."\r\n");

$token = trim($_REQUEST['p']);
$gameId = intval($_REQUEST['game_id']);
if(!$token || !$gameId ){
	write_log(ROOT_PATH."log","api_login_error_log_"," parameter error!, token=$token ,game_id=$gameId, ".date("Y-m-d H:i:s")."\r\n");
	exit(json_encode(array('status'=>2, 'msg'=>'parameter error!')));
}
$appSecret = $key_arr[$gameId]['appSecret'];
$parseStr = myEncrypt::decrypt($token, $appSecret);
parse_str($parseStr, $parseArr);

write_log(ROOT_PATH."log","api_login_result_log_","parseStr=$parseStr, ".date("Y-m-d H:i:s")."\r\n");
if(isset($parseArr['username']) && isset($parseArr['account_id']) && isset($parseArr['game_id'])){
	$username = urldecode($parseArr['username']);
	$accountId = intval($parseArr['account_id']);
	$gameId = intval($gameId);
	$conn = SetConn('88');
	$sql = "select id,token,addtime,isnew from web_token where account_id='$accountId' and game_id='$gameId'  order by id desc limit 1";
	if(false == $query = mysqli_query($conn,$sql)){
		write_log(ROOT_PATH."log","api_login_error_log_"," sql error!, sql=$sql, ".date("Y-m-d H:i:s")."\r\n");
		exit(json_encode(array('status'=>2, 'msg'=>'web server error!')));
	}
	$rs = @mysqli_fetch_assoc($query);
	if($rs){
		if(time() - $rs['addtime'] > 300)
			exit(json_encode(array('status'=>2, 'msg'=>' token is timeout!')));
		if($rs['token'] == $token){
			if($rs['isnew'] == 1){
				write_log ( ROOT_PATH . "log", "api_new_account_", "sql=$sql, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
				$upsql = "update web_token set isnew=0 where id='{$rs['id']}'";
				mysqli_query($conn,$upsql);
			}
			exit(json_encode(array('status'=>0,'msg'=> 'success','data'=>array('isnew'=>$rs['isnew'],'userid'=>$accountId))));
		}
		
	}else{
		write_log(ROOT_PATH."log","api_login_error_log_"," sql null!, sql=$sql, ".date("Y-m-d H:i:s")."\r\n");
	}
	exit(json_encode(array('status'=>2, 'msg'=>' token error!')));
} else {
	write_log(ROOT_PATH."log","api_login_error_log_"," sign error, post=$post, get=$get, ".date("Y-m-d H:i:s")."\r\n");
	exit(json_encode(array('status'=>2,'msg'=> ' other error!')));
}
?>