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
write_log(ROOT_PATH."log","play800new_info_log_","post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");

$appUid = $_REQUEST['uid'];
$sessionid = $_REQUEST['sessionid'];
$gameId = $_REQUEST['game_id'];

if(!$appUid || !$sessionid || !$gameId){
    write_log(ROOT_PATH."log","play800new_login_error_","post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
    exit('2 0');
}
$data['uid'] = $appUid;
$data['uname'] = $sessionid;
$postData['a'] = 'userloginverify';
$postData['data'] = set_key( 0 , json_encode( $data ) );

$resultArr = doCurl($postData);
$result = json_encode($resultArr);
write_log(ROOT_PATH."log","play800new_login_result_","result=$result, postData=".json_encode($postData).", post=$post,get=$get,".date("Y-m-d H:i:s")."\r\n");
if($resultArr['code'] == '200' ){
    $accountConn = $accountServer[$gameId];
    $conn = SetConn($accountConn);
    $channel_account = @mysqli_real_escape_string($conn,$appUid.'@play800');
    $sql = "select id from account where channel_account='$channel_account' limit 1";
    if(false == $query = mysqli_query($conn,$sql)){
        write_log(ROOT_PATH."log","play800new_login_error_","$accountConn, sql=$sql, mysql error, ".mysqli_error($conn)." ".date("Y-m-d H:i:s")."\r\n");
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
        write_log(ROOT_PATH."log","new_account_play800new_log_","play800 new account login, post=$post,get=$get, "."return= 1 $insert_id  ".date("Y-m-d H:i:s")."\r\n");
        exit("1 $insert_id");
    }
} else {
    write_log(ROOT_PATH."log","play800new_login_error_","sign error!, result=$result, ".date("Y-m-d H:i:s")."\r\n");
    exit("4 0");
}
exit('999 0');