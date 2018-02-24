<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2017/1/4
 * Time: 下午2:01
 */
include_once 'config.php';
$post = serialize($_POST);
$get = serialize($_GET);
write_log(ROOT_PATH."log","gangtai_pkrank_log_","post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
$returnarr =array();
$returnarr['data'] = array();
$conn = SetConn(88);
//判断订单id情况
$sql = "select account_id,server_name,name,elite_ranklev,elite_rankstar,elite_rankpoint from rank_tianti a,web_game_server b,(select max(logdate) mdate from rank_tianti limit 1) c where a.serverid=b.server_id and logdate=c.mdate order by elite_ranklev,elite_rankstar desc,elite_rankpoint desc limit 50;";
$query=mysqli_query($conn,$sql);
global $accountServer;
$accountConn = $accountServer[8];
$myconn = SetConn($accountConn);
$data = array();
while($result=mysqli_fetch_assoc($query)){
	$sql_account = "select channel_account from account where id ='{$result['account_id']}' limit 1;";
	$query_account = mysqli_query($myconn, $sql_account);
	$result_account = @mysqli_fetch_assoc($query_account);
	if($result_account['channel_account']){
		$result['account'] = explode('@gangtai', $result_account['channel_account'])[0];
	}
	unset($result['account_id']);
	$data[] = $result;
}

if(!$data){
	write_log(ROOT_PATH."log","gangtai_pkrank_error_",$sql.date("Y-m-d H:i:s")."\r\n");
}
$returnarr['code'] = '200';
$returnarr['message'] = 'ok';
$returnarr['data'] = $data;
exit(json_encode($returnarr));
