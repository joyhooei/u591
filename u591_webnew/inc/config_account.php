<?php
global  $accountServer;
global $tongjiServer;

$tongjiServer = array(
		12=>'http://wowtj.u591776.com:8080/index.php/',  //魔兽
		13=>'http://wowtj.u591776.com:8080/index.php/',  //KO
		100=>'http://pokeartj.u776hainiu.com:8080/index.php/',  //阿拉伯
		101=>'http://pokerutj.u776hainiu.com:8088/index.php/',  //俄罗斯
		102=>'http://pokethatj.u776hainiu.com:8080/index.php/',  //泰国
		103=>'http://pokethatj.u776hainiu.com:8080/index.php/',  //印尼
);
function isOwnWay($PayName,$loginname){
	$ch = explode('@', $PayName);
	$chname = $ch[count($ch)-1];
	if($chname != "$loginname"){
		return 1;
	}else
		return 0;
}
$exrateUS = array(
		'RUB'=>57.5,
		'USD'=>1,
		'THB'=>31.7,
)
?>