<?php
global  $accountServer;
global $tongjiServer;
$accountServer = array(
		5 =>81,
		8 =>85, //口袋账号库
);

$tongjiServer = array(
		5=>10001,
		8=>10002,  //统计口袋 appid
);
function isOwnWay($PayName,$loginname){
	$ch = explode('@', $PayName);
	$chname = $ch[count($ch)-1];
	if($chname != "$loginname"){
		return 1;
	}else 
		return 0;
}
?>