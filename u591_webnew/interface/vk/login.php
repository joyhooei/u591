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
write_log(ROOT_PATH."log","vk_info_log_","post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");

$uid = $_REQUEST['uid'];
$userToken = $_REQUEST['user_token'];
$gameId = $_REQUEST['game_id'];

if(!$userToken || !$gameId){
    write_log(ROOT_PATH."log","vk_info_log_","param error. post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
    exit('2 0');
}
global $key_arr;
$uids = explode('_', $uid);
$uid = $uids[0];
$type = $uids[1];
$appid= $key_arr[$gameId][$type]['appid'];
$appkey= $key_arr[$gameId][$type]['appkey'];
$url = "https://oauth.vk.com/access_token?client_id=$appid&client_secret=$appkey&v=5.1&grant_type=client_credentials";
$rdata = https_post($url, $data);
$rdata= json_decode($rdata,true);
$token = $rdata['access_token'];
$url = "https://api.vk.com/method/secure.checkToken?token=$userToken&client_secret=$appkey&access_token=$token&v=5.1";
$rdata = https_post($url, $data);

write_log(ROOT_PATH."log","vk_result_log_",$url.",result=".$rdata.", post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
if($rdata){
    $rdata = json_decode($rdata,true);
    if('1' == $rdata['response']['success']){
    	$memId = $rdata['response']['user_id'];
    	$username = $memId.'@vk';
    	$bindtable = getAccountTable($username,'token_bind');
    	$bindwhere = 'token';
    	$insertinfo = insertaccount($username,$bindtable,$bindwhere,$gameId);
    	if($insertinfo['status'] == '1'){
    		write_log(ROOT_PATH."log","vk_login_error_",json_encode($insertinfo).",post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
    		exit('3 0');
    	}else{
    		$insert_id = $insertinfo['data'];
    		if($insertinfo['isNew'] == '1'){
    			exit("1 $insert_id");
    		}else{
    			exit("0 $insert_id");
    		}
    	}
    }
}
write_log(ROOT_PATH."log","vk_login_error_",$token.",result=".json_encode($rdata).", post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
exit('4 0');