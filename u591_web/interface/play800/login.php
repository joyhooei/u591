<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2016/12/9
 * Time: 上午11:24
 */
include_once 'config.php';
$post = serialize($_POST);
$get = serialize($_GET);
write_log(ROOT_PATH."log","play800_info_log_","post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");

$appUid = $_REQUEST['uid'];
$sessionid = $_REQUEST['sessionid'];
$gameId = $_REQUEST['game_id'];

if(!$appUid || !$sessionid || !$gameId){
    write_log(ROOT_PATH."log","play800_login_error_","post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
    exit('2 0');
}
$appUidArr = explode('_', $appUid);

$type = isset($appUidArr[1]) ? strtolower($appUidArr[1]) : 'ios';
$site = $key_arr[$gameId][$type]['site'];
$key = $key_arr[$gameId][$type]['key'];
$appUid = $appUidArr[0];
$time = time();
$signStr = $key."WX".$site."WX".$time.$time;
//登录验证POST的参数
$postData = array(
    "site" => $site,
    "time" => $time,
    "sessionid" => $sessionid,
    "uid" => $appUid,
    "sign" => md5($signStr),
);
$url = 'http://center.play800.cn/api/verify_sessionid';
$result = https_post($url, $postData);
write_log(ROOT_PATH."log","play800_login_result_","result=$result,signStr=$signStr, postData=".json_encode($postData).", ".date("Y-m-d H:i:s")."\r\n");
$resultArr = json_decode($result, true);
if($resultArr['result'] == '0' && isset($resultArr['data']['uid'])){
    $appUid = $resultArr['data']['uid'];
    $accountConn = $accountServer[$gameId];
    $conn = SetConn($accountConn);
    $channel_account = @mysqli_real_escape_string($conn,$appUid.'@play800');
    $sql = "select id from account where channel_account='$channel_account' limit 1";
    if(false == $query = mysqli_query($conn,$sql)){
        write_log(ROOT_PATH."log","play800_login_error_","$accountConn, sql=$sql, mysql error, ".mysqli_error($conn)." ".date("Y-m-d H:i:s")."\r\n");
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
        write_log(ROOT_PATH."log","new_account_play800_log_","play800 new account login, post=$post,get=$get, "."return= 1 $insert_id  ".date("Y-m-d H:i:s")."\r\n");
        exit("1 $insert_id");
    }
} else {
    write_log(ROOT_PATH."log","play800_login_error_","sign error!, result=$result, ".date("Y-m-d H:i:s")."\r\n");
    exit("4 0");
}
exit('999 0');