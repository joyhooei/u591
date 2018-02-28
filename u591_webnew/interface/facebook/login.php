<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2017/2/21
 * Time: 下午7:28
 */
include_once 'config.php';
$post = serialize($_POST);
$get = serialize($_GET);

$gameId = $_REQUEST['game_id'] ? $_REQUEST['game_id'] : 8;
$token =  $_REQUEST['token'];
$type = $_REQUEST['type'];

write_log(ROOT_PATH.'log','fb_login_info_',"post=$post,get=$get, ".date('Y-m-d H:i:s')."\r\n");
if(!$token || !$gameId){
    write_log(ROOT_PATH.'log','fb_login_error_',"params error. post=$post,get=$get,".date('Y-m-d H:i:s')."\r\n");
    exit("2 0");
}

$url = "https://graph.facebook.com/me/?access_token=$token";
$data = array();
$result = https_post($url,$data);
$result_arr = json_decode($result,true);
write_log(ROOT_PATH.'log','fb_check_info_',"result=$result,url=$url,".date('Y-m-d H:i:s')."\r\n");

if(!isset($result_arr['id'])){
    write_log(ROOT_PATH.'log','fb_login_error_',"result=$result,url=$url,".date('Y-m-d H:i:s')."\r\n");
    exit("4 0");
}
$fbId = $result_arr['id'];
$username = $fbId.'@fb';
$bindtable = getAccountTable($username,'token_bind');
$bindwhere = 'token';
$insertinfo = insertaccount($username,$bindtable,$bindwhere,$gameId);
if($insertinfo['status'] == '1'){
	write_log(ROOT_PATH."log","fb_login_error_",json_encode($insertinfo).",post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
	exit('3 0');
}else{
	$insert_id = $insertinfo['data'];
	if($insertinfo['isNew'] == '1'){
		exit("1 $insert_id");
	}else{
		exit("0 $insert_id");
	}
}