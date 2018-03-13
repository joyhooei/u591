<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2017/1/17
 * Time: 上午11:53
 */
include_once 'config.php';
$accountid = $_REQUEST['accountid']; 
write_log(ROOT_PATH."log","close_log_","post=$post, get=$get, ".date("Y-m-d H:i:s")."\r\n");
if(!$accountid)
    exit(0);
$conn = SetConn(88);
$sql = "insert into  acc_close(accountid) values($accountid)";
@mysqli_query($conn,$sql);
exit(1);