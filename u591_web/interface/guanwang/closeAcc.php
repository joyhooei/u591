<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2017/1/17
 * Time: 上午11:53
 */
include_once 'config.php';
$accountid = $_REQUEST['accountid']; 
$serverid = $_REQUEST['serverid'];
write_log(ROOT_PATH."log","close_log_","request=$_REQUEST, ".date("Y-m-d H:i:s")."\r\n");
if(!$accountid || !$serverid)
    exit(0);
$conn = SetConn(88);
$updateTime = date("Y-m-d H:i:s");
$sql = "insert into  g_acc_close(accountId,serverId,updateTime) values($accountid,$serverid,'$updateTime')";
@mysqli_query($conn,$sql);
exit(1);