<?php 
ini_set('memory_limit', '1024M');
include_once 'config.php';
$data = getdbdata();
$time = 0;
foreach ($data as $v){
	$time += getdata($v[1],$v[2]);
}
echo '耗时：'.$time.'秒';
 
function getdata($start,$num,$limit=50){
	$data = [];
	$servers = [];
	$now = date('YmdH');
	$starttime = time();
	for($i=$start;$i<=$num;$i++){
		$serverid = togetherServer($i);
		if(isset($servers[$serverid])) continue;
		$servers[$serverid] = $serverid;
		echo $serverid.PHP_EOL;
		$database = mydb($serverid);
		$preser = str_pad(substr($serverid,-3,3),3,0,STR_PAD_LEFT);
		$sql = "SELECT server_id,account_id,$now as loghour,sum(data) as paymoney from u_card$preser where time_stamp between 1801180000 and 1801250000 
		group by account_id,server_id order by paymoney desc limit 50";
		$query_account = @mysqli_query($database, $sql);
		while($v = @mysqli_fetch_assoc($query_account)){
			$data[] = $v;
		}
		if($data){
			insert_batch("rank_recharge", $data);
		}
	}
	return (time()-$starttime);
}