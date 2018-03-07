<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2017/3/15
 * Time: 下午1:48
 * 越南绑定查询接口
 */
include_once 'config.php';
$post = serialize($_POST);
$get = serialize($_GET);
$array = array();

$array['game_id'] = $_REQUEST['game_id'];
$array['account_id'] = $_REQUEST['account_id'];
$sign = $_REQUEST['sign'];
write_log(ROOT_PATH."log","bind_ggd_check_info_","post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");

global $key_arr;
$appKey = $key_arr['appKey'];
ksort($array);
$md5Str = http_build_query($array);
$mySign = md5($md5Str.$appKey);

if($sign != $mySign)
    exit(json_encode(array('status'=>2, 'msg'=>'sign error.')));

$accountid = $array['account_id'];
$gameId = $array['game_id'];
$snum = giQSModHash($accountid);
$conn = SetConn($gameId,$snum,1);//account分表
$acctable = betaSubTableNew($accountid,'account',999);
$sql = "select channel_account from $acctable where id = '$accountid' limit 1";
if(false == $query = mysqli_query($conn,$sql)){
	write_log(ROOT_PATH."log","bind_ggd_check_error_","mysql connect error, ".mysqli_error($conn).date("Y-m-d H:i:s")."\r\n");
	exit(json_encode(array('status'=>1, 'msg'=>'mysql connect error.')));
}
$result = @mysqli_fetch_assoc($query);
$returnArr['bind'] = '';
if($result['channel_account']){
	$ch = explode('@', $result['channel_account']);
	$chname = $ch[count($ch)-1];
	$returnArr['bind'] = $chname;
}
exit(json_encode(array('status'=>0,'msg'=>'success','data'=>$returnArr)));

