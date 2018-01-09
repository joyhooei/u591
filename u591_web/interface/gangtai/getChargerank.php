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
write_log(ROOT_PATH."log","gangtai_rechargerank_log_","post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
$returnarr =array();
$returnarr['data'] = array();
$conn = SetConn(88);
//判断订单id情况
$sql = "select a.server_id,account_id,server_name,paymoney from rank_recharge a,web_game_server b,(select max(loghour) mdate from rank_recharge limit 1) c where a.server_id=b.server_id
		 and loghour=c.mdate order by paymoney desc limit 50;";
$query=mysqli_query($conn,$sql);
global $accountServer;
$accountConn = $accountServer[8];
$myconn = SetConn($accountConn);
$data = array();
while($result=mysqli_fetch_assoc($query)){
	$sql_account = "select channel_account from account where id ='{$result['account_id']}' limit 1;";
	$query_account = mysqli_query($myconn, $sql_account);
	$result_account = @mysqli_fetch_assoc($query_account);
	$result['account'] = '';
	if($result_account['channel_account']){
		$result['account'] = explode('@gangtai', $result_account['channel_account'])[0];
	}
	$conn = SetConn($result['server_id']);
	$table = betaSubTable($result['server_id'], 'u_player', 1000);
	$sql_account = "select name from $table where account_id ='{$result['account_id']}' limit 1;";
	$query_account = mysqli_query($conn, $sql_account);
	$result_account = @mysqli_fetch_assoc($query_account);
	$result['name'] = '';
	if($result_account['name']){
		$result['name'] = $result_account['name'];
	}
	unset($result['account_id'],$result['server_id']);
	$data[] = $result;
}

if(!$data){
	write_log(ROOT_PATH."log","gangtai_rechargerank_error_",$sql.date("Y-m-d H:i:s")."\r\n");
}
$returnarr['code'] = '200';
$returnarr['message'] = 'ok';
$returnarr['data'] = $data;
exit(json_encode($returnarr));
