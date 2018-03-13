<?php
function  giQSAccountHash( $string,$sum = 999)
{
	$string = "$string";
	$length = strlen($string);
	$result = 0;
	for($i=0;$i<$length;$i++){
		$result = ($result*397+ ord($string[$i]))%$sum;
	}
	return $result+1;
}
echo giQSAccountHash('13459405424');
/*function  giQSAccountHash( $string )
{
	$length = strlen($string);
	$result = 0;
	for($i=0;$i<$length;$i++){
		$result = bcadd(bcmul($result,397), ord($string[$i]));
	}
	return $result;
}
function subTable($account_id, $table, $sum){
	if($account_id == 0)
		return $table;
	$suffix = bcmod($account_id,$sum)+1;
	$s = sprintf('%03d', $suffix);
	return $table.$s;
}
$name = '青雪轶丽';
$nameacc = giQSAccountHash( $name );
$table = subTable($nameacc, 'u_playername', 200);
print_r($table);die;*/