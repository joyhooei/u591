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
write_log(ROOT_PATH."log","leshi_info_log_","post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");


$access_token = $_REQUEST['user_token'];
$gameId = $_REQUEST['game_id'];
$uid = $_REQUEST['uid'];

if(!$access_token || !$gameId || !$uid){
    write_log(ROOT_PATH."log","leshi_info_log_","param error. post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
    exit('2 0');
}
$client_id = $key_arr[$gameId]['appId'];
$signstr = "access_token=$access_token&uid=$uid&client_id=$client_id";
$url = "https://sso.le.com/oauthopen/userbasic?$signstr";
$rdata = https_post($url, $data);

write_log(ROOT_PATH."log","leshi_result_log_","result=".$rdata.", post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
if($rdata){
    $rdata = json_decode($rdata,true);
    if('1' == $rdata['status']){
    	$memId = $rdata['result']['letv_uid'];
        //CP操作,请求成功,用户有效
        global $accountServer;
        $accountConn = $accountServer[$gameId];
        $conn = SetConn($accountConn);
        if($conn == false){
            write_log(ROOT_PATH."log","leshi_login_error_","account connect error. conn=$accountConn, ".mysqli_error($conn)." ".date("Y-m-d H:i:s")."\r\n");
            exit('3 0');
        }
        $channel_account = mysqli_real_escape_string($conn,$memId.'@leshi');
        $sql = "select id from account where channel_account='$channel_account' limit 1";
        if(false == $query = mysqli_query($conn, $sql)){
            write_log(ROOT_PATH."log","leshi_login_error_","mysql error. sql=$sql, ".mysqli_error($conn)." ".date("Y-m-d H:i:s")."\r\n");
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
            write_log(ROOT_PATH."log","new_account_leshi_log_","return=1 $insert_id, post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
            exit("1 $insert_id");
        }
    }
}
write_log(ROOT_PATH."log","leshi_login_error_","result=$rdata, post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
exit('4 0');