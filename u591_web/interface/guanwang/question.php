<?php
/**
* ==============================================
* Copyright (c) 2015 All rights reserved.
* ----------------------------------------------
* 问卷调查奖励
* ==============================================
* @date: 2016-7-15
* @author: luoxue
* @version:
*/
include_once 'config.php';
$post = serialize($_POST);
write_log(ROOT_PATH."log","question_log_","post=$post, ".date("Y-m-d H:i:s")."\r\n");
$serverid = $_POST['serverid'];
$userid = $_POST['userid'];
$nper = $_POST['nper'];
$conn = SetConn($serverid);
$table = betaSubTable($serverid, 'u_player_questionnaire', 1000);
$sql = "insert into $table(player_id,server_id,questionnaire_id,complete_flag,award_flag) values
		(?,?,?,1,0)";
bindParam($sql,[$userid,$serverid,$nper]);
if(false == $query = mysqli_query($conn,$sql)){
	write_log(ROOT_PATH."log","question_error_",$sql.",post=$post, ".mysqli_error($conn).','.date("Y-m-d H:i:s")."\r\n");
	exit(json_encode(array('status'=>1, 'msg'=>'error.')));
}
write_log(ROOT_PATH."log","question_success_","$sql,post=$post, ".date("Y-m-d H:i:s")."\r\n");
exit(json_encode(array('status'=>0, 'msg'=>'success')));


function bindParam(&$sql, $data) {
	foreach ($data as $var){
		$var = addslashes($var); //转义
		$var = "'".$var."'"; //加上单引号.SQL语句中字符串插入必须加单引号
		$pos = strpos($sql, '?');
		//替换问号
		$sql = substr($sql, 0, $pos) . $var . substr($sql, $pos + 1);
	}

}