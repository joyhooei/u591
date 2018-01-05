<?php
/**
* ==============================================
* Copyright (c) 2015 All rights reserved.
* ----------------------------------------------
* 07073登陆接口
* ==============================================
* @date: 2016-7-28
* @author: Administrator
* @return:
*/
include_once 'config.php';
$post = serialize($_POST);
$get = serialize($_GET);
write_log(ROOT_PATH."log","07073_info_log_","post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
$pArr = explode('_', $_REQUEST['p']);
$appUsername = $pArr[1];
$token = $_REQUEST['token'];
$game_id = intval($_REQUEST['game_id']);

$appPid =  $arr_key[$game_id]['pid'];
if(!$appPid || !$appUsername || !$game_id || !$token){
	write_log(ROOT_PATH."log","07073_login_error_"," parameter is error ,post=$post, get=$get, ".date("Y-m-d H:i:s")."\r\n");
	exit('2 0');
}
$appKey = $arr_key[$game_id]['secretKey'];
$data = array();
$data['pid'] = $appPid;
$data['username'] = $appUsername;
$data['token'] = $token;
ksort($data);
$data['sign'] = md5(http_build_query($data).$appKey);
$url = "http://sdk.07073sy.com/index.php/User/v4";
$result = gethttpcurl($url,array('postarr'=>$data));
$resultArr = json_decode($result, true);
write_log(ROOT_PATH."log","07073_result_log_","url=$url, result=$result,".date("Y-m-d H:i:s")."\r\n");
if(isset($resultArr['state']) && $resultArr['state']==1){
	$openId = $resultArr['data']['uid'];
	$accountConn = $accountServer[$game_id];
	$conn = SetConn($accountConn);
	$channel_account = mysqli_real_escape_string($conn,$openId.'@07073');
    $sql = "select id from account where channel_account='$channel_account' limit 1";
    if(false == $query = mysqli_query($conn,$sql)){
    	write_log(ROOT_PATH."log","07073_login_error_","$accountConn, sql=$sql, mysql error, ".mysqli_error($conn)." ".date("Y-m-d H:i:s")."\r\n");
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
    mysqli_query($conn, $sql_game);
    $insert_id = mysqli_insert_id($conn);
    if($insert_id){
        write_log(ROOT_PATH."log","new_account_07073_log_"," 07073 new account login, post=$post,get=$get, "."return= 1 $insert_id  ".date("Y-m-d H:i:s")."\r\n");
        exit("1 $insert_id");
    }
}else{
	write_log(ROOT_PATH."log","07073_login_error_","url=$url, result=$result, ".date("Y-m-d H:i:s")."\r\n");
	exit('4 0');
}
exit('999 0');
?>
