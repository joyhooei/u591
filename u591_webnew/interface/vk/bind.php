<?php
/**
 * 游客绑定vk帐号
 */
include_once 'config.php';

$post = serialize($_POST);
$get = serialize($_GET);
write_log(ROOT_PATH.'log','vk_bind_info_'," post=$post,get=$get, ".date('Y-m-d H:i:s')."\r\n");

$gameId = isset($_REQUEST['game_id']) ? $_REQUEST['game_id'] : 8;
$userToken = $_REQUEST['token'];
$ext = $_REQUEST['ext']; //accountId_type

if(!$userToken || !$ext || !$gameId){
    write_log(ROOT_PATH.'log','vk_bind_error_',"parameters error.post=$post,get=$get, ".date('Y-m-d H:i:s')."\r\n");
    exit("2 0");
}
$extArr = explode('_', $ext);
$accountId = isset($extArr[0]) ? $extArr[0] : 0;
$currenty = isset($extArr[1]) ? $extArr[1] : 0;
$type = isset($extArr[2]) ? $extArr[2] : 'ios';
if(!in_array($currenty, array('vk'))){
	write_log(ROOT_PATH.'log','vk_bind_error_',"bind type not in vk,$currenty ".date('Y-m-d H:i:s')."\r\n");
	exit("4 0");
}
if($currenty == 'vk'){
    global $key_arr;
    $appid= $key_arr[$gameId][$type]['appid'];
    $appkey= $key_arr[$gameId][$type]['appkey'];
    $url = "https://oauth.vk.com/access_token?client_id=$appid&client_secret=$appkey&v=5.1&grant_type=client_credentials";
    $rdata = https_post($url, $data);
    write_log(ROOT_PATH."log","vk_bind_result_log_",$url.",result=".$rdata.", post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
    $rdata= json_decode($rdata,true);
    $token = $rdata['access_token'];
    $url = "https://api.vk.com/method/secure.checkToken?token=$userToken&client_secret=$appkey&access_token=$token&v=5.1";
    $rdata = https_post($url, $data);
    write_log(ROOT_PATH."log","vk_bind_result_log_",$url.",result=".$rdata.", post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
    $channel_account = '';
    if($rdata){
    	$rdata = json_decode($rdata,true);
    	if('1' == $rdata['response']['success']){
    		$channel_account = $rdata['response']['user_id'].'@vk';
    	}
    }
}
if(!$channel_account){
	write_log(ROOT_PATH.'log','vk_bind_error_'," channel_account is not exist. post=$post,get=$get,".date('Y-m-d H:i:s')."\r\n");
	exit("3 0");
}
$username = $channel_account;
$bindtable = getAccountTable($username,'token_bind');
$bindwhere = 'token';
$result = bindaccount($username,$bindtable,$bindwhere,$gameId,$accountId,'channel_account');
if($result['status'] == '0'){
	write_log(ROOT_PATH.'log','vk_bind_return_',"return={$result['noNew']} {$result['data']}. post=$post,get=$get, ".date('Y-m-d H:i:s')."\r\n");
	exit("{$result['noNew']} {$result['data']}");
}else{
	write_log(ROOT_PATH.'log','vk_bind_error_',"{$result['msg']} , ".date('Y-m-d H:i:s')."\r\n");
	exit("1000 $accountId");
}