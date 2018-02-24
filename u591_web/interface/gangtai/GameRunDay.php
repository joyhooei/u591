<?php 
ini_set('memory_limit', '1024M');
include_once 'config.php';
$data = getdbdata();
$time = 0;
foreach ($data as $v){
	$time += getdata($v[0],$v[1],$v[2]);
}
echo '耗时：'.$time.'秒';
 
function getdata($database,$start,$num,$limit=50){
	$now = date('Ymd',strtotime('-1 days'));
	$starttime = time();
	for($i=$start;$i<=$num;$i++){
		$data = [];
		echo $i.PHP_EOL;
		$preser = str_pad(substr($i,-3,3),3,0,STR_PAD_LEFT);
		$sql = "SELECT b.serverid,b.account_id,a.player_id,b.name,$now as logdate,a.elite_ranklev,a.elite_rankstar,a.elite_rankpoint from u_player_pkgame$preser a,u_player$preser b
		 where a.player_id=b.id and a.season=11 order by elite_ranklev,elite_rankstar desc,elite_rankpoint desc limit 50";
		$query_account = @mysqli_query($database, $sql);
		while($v = @mysqli_fetch_assoc($query_account)){
			$data[] = $v;
		}
		if($data){
			insert_batch("rank_tianti", $data);
		}
	}
	return (time()-$starttime);
}