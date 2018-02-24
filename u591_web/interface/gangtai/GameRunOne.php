<?php 
ini_set('memory_limit', '1024M');
include_once 'config.php';
$data = getdbdata();
$time = 0;
foreach ($data as $v){
	$time += getdata($v[0],$v[1],$v[2]);
}
echo '耗时：'.$time.'秒';
 
function getdata($database,$start,$num){
	$now = date('Ymd',strtotime('-1 days'));
	$starttime = time();
	for($i=$start;$i<=$num;$i++){
		echo $i.PHP_EOL;
		$t1 = $t2 = $t3 = $t4 = [];
		$preser = str_pad(substr($i,-3,3),3,0,STR_PAD_LEFT);
		$sql = "SELECT a.id as player_id,name,level,a.account_id,a.lookface,a.serverid,vip_level,from_unixtime(a.login_time, '%Y%m%d') as login_time FROM u_player$preser a,
		(SELECT server_id,account_id,vip_level FROM `u_gift_recharge$preser`) b WHERE a.account_id=b.account_id";
		$query_account = @mysqli_query($database, $sql);
		while($v = @mysqli_fetch_assoc($query_account)){
			$t1[] = $v;
		}
		if($t1){
			insert_batch("t1", $t1);
		}
		
		$sql = "SELECT userid,server_id,arena_marks,from_unixtime(last_battime, '%Y%m%d') as last_battime FROM `u_areninfo$preser`";
		$query_account = @mysqli_query($database, $sql);
		while($v = @mysqli_fetch_assoc($query_account)){
			$t2[] = $v;
		}
		if($t2){
			insert_batch("t2", $t2);
		}
		
		$sql = "SELECT player_id,com_ranklev,com_rankstar,com_rankpoint,elite_ranklev,elite_rankstar,elite_rankpoint,serverid FROM u_player$preser a,
(SELECT player_id,com_ranklev,com_rankstar,com_rankpoint,elite_ranklev,elite_rankstar,elite_rankpoint FROM u_player_pkgame$preser where season=11) b
 WHERE a.id=b.player_id";
		$query_account = @mysqli_query($database, $sql);
		while($v = @mysqli_fetch_assoc($query_account)){
			$t3[] = $v;
		}
		if($t3){
			insert_batch("t3", $t3);
		}
		
		$sql = "SELECT b.player_id,a.serverid,COUNT(*) as ceudemon FROM u_player$preser a,
(SELECT * FROM `u_eudemon$preser` WHERE template_id in(
101346,130524,120646,120645,120644,110646,110645,110644,
101645,101285,101704,101726,101725,101724,101376,101375,
101366,130525,130526,101345,100606,100605,101634,101633,
101632,101706,101705,101296,101295,101306,101305,101276,
101275,101356,101355,101365,101304,101344,100534,101294,
101284,100646,100645,100626,100625,100636,100635,101274,
120524,100644,100634,100624,100604,110524,101334,101564,
100536,100535,120526,120525,110526,110525,101364,100526,
100525,101644,101354,101336,101335,101374,101566,101565,
100524)) b 
WHERE a.id=b.player_id  GROUP BY b.player_id";
		$query_account = @mysqli_query($database, $sql);
		while($v = @mysqli_fetch_assoc($query_account)){
			$t4[] = $v;
		}
		if($t4){
			insert_batch("t4", $t4);
		}
	}
	return (time()-$starttime);
}