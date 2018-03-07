<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2017/3/13
 * Time: 下午2:13
 * Desc: mac绑定渠道帐号(google,facebook)
 *       由于google比较特殊，所以放在这目录下面
 * Retu: 2 0 参数错误
 *       3 0 数据库连接错误
 *       4 0 验证错误
 *       1 accountId 该帐号已经绑定
 *       0 accountId 绑定成功
 *       1000 accountId 此帐号不能绑定
 */
include_once 'config.php';

$post = serialize($_POST);
$get = serialize($_GET);
write_log(ROOT_PATH.'log','bind_login_info_'," post=$post,get=$get, ".date('Y-m-d H:i:s')."\r\n");

$gameId = isset($_REQUEST['game_id']) ? $_REQUEST['game_id'] : 8;
$token = $_REQUEST['token'];
$ext = $_REQUEST['ext']; //accountId_type

if(!$token || !$ext || !$gameId){
    write_log(ROOT_PATH.'log','bind_login_error_',"parameters error.post=$post,get=$get, ".date('Y-m-d H:i:s')."\r\n");
    exit("2 0");
}
$extArr = explode('_', $ext);
$accountId = isset($extArr[0]) ? $extArr[0] : 0;
$type = isset($extArr[1]) ? $extArr[1] : 0;
$currenty = isset($extArr[2]) ? $extArr[2] : '';
if(!$currenty){
	$currenty = 'yuenan';
}
if($type == 'google'){
    global $key_arr;
    include_once 'src/Google/autoload.php';
    $data = array();

    $appId = isset($key_arr[$gameId][$currenty]['appId']) ? $key_arr[$gameId][$currenty]['appId'] : $key_arr[$gameId]['appId'];
    $appSecret = isset($key_arr[$gameId][$currenty]['appSecret']) ? $key_arr[$gameId][$currenty]['appSecret'] : $key_arr[$gameId]['appSecret'];

    $client = new Google_Client();
    $client->setClientId($appId);
    $client->setClientSecret($appSecret);
    $token = $client->fetchAccessTokenWithAuthCode($token);
    if(isset($token['access_token'])) {
        $client->setAccessToken($token);
        if ($client->getAccessToken()) {
            $token_data = $client->verifyIdToken();
        }
    }
    $jsonRs = isset($token_data) ? json_encode($token_data) : json_encode($token);
    write_log(ROOT_PATH.'log','bind_google_login_check_',"$jsonRs, ".date('Y-m-d H:i:s')."\r\n");
    if(!isset($token_data['sub'])){
        write_log(ROOT_PATH.'log','bind_google_login_error_',"result=$jsonRs, ".date('Y-m-d H:i:s')."\r\n");
        exit("4 0");
    }
    $channel_account = $token_data['sub'].'@google';
}elseif ($type=='fb'){
    $url = "https://graph.facebook.com/me/?access_token=$token";
    $data = array();
    $result = https_post($url,$data);
    $resultArr = json_decode($result,true);
    write_log(ROOT_PATH.'log','bind_fb_login_check_',"result=$result,url=$url,".date('Y-m-d H:i:s')."\r\n");

    if(!isset($resultArr['id'])){
        write_log(ROOT_PATH.'log','bind_fb_login_error__',"result=$result,url=$url,".date('Y-m-d H:i:s')."\r\n");
        exit("4 0");
    }
    $channel_account = $resultArr['id'].'@fb';
}
$username = $channel_account;
$bindtable = getAccountTable($username,'token_bind');
$bindwhere = 'token';
$result = bindaccount($username,$bindtable,$bindwhere,$gameId,$accountId,'channel_account');
if($result['status'] == '0'){
	write_log(ROOT_PATH.'log','bind_success_',"result=".json_encode($result).date('Y-m-d H:i:s')."\r\n");
	exit("{$result['noNew']} {$result['data']}");
}else{
	write_log(ROOT_PATH.'log','bind_error_',"{$result['msg']} , ".date('Y-m-d H:i:s')."\r\n");
	exit("1000 $accountId");
}