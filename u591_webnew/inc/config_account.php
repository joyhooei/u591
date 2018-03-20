<?php
global  $accountServer;
global $tongjiServer;

$tongjiServer = array(
		100=>'http://pokeartj.u776hainiu.com:8080/index.php/',  //阿拉伯
		101=>'http://pokerutj.u776hainiu.com:8080/index.php/',  //俄罗斯
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