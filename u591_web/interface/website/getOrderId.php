<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2017/1/17
 * Time: 上午11:53
 */
include_once 'config.php';
$sid = $_REQUEST['sid'];
$roleid = $_REQUEST['roleid'];
$ext = $_REQUEST['ext'];
$table = betaSubTable($sid, 'u_player', '1000');
$conn = SetConn($sid);
$sql = "select account_id from $table where id='{$roleid}' limit 1;";
if(false == $query = mysqli_query($conn,$sql)){
	write_log(ROOT_PATH."log","paywap_orderId_new_error_","sql=$sql, ".mysqli_error($conn)." ".date("Y-m-d H:i:s")."\r\n");
	return json_encode(array('code'=>1,'data'=>'数据库异常'));
}
$rs = @mysqli_fetch_assoc($query);
if(!$rs){
	write_log(ROOT_PATH."log","paywap_orderId_new_error_","角色信息不存在".date("Y-m-d H:i:s")."\r\n");
	exit(json_encode(array('code'=>1,'data'=>'角色信息不存在')));
}
$exts = explode('_', $ext);
$gameId = $exts['0'];
$accountId = $exts['2'];
$type =$exts['3'];
$giftId = $exts['4'];
if($rs['account_id'] != $accountId){
	write_log(ROOT_PATH."log","paywap_orderId_new_error_","accountId error. post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
	exit(json_encode(array('code'=>1,'data'=>'数据异常')));
}

$cpOrderId = $gameId.'_'.$sid.'_'.$accountId.'_'.$type.'_'.$giftId;
exit(json_encode(array('code'=>0,'data'=>$cpOrderId)));