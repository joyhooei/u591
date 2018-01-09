<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2017/1/4
 * Time: 下午2:01
 * 港台
 */
define('ROOT_PATH', str_replace('interface/gangtai/config.php', '', str_replace('\\', '/', __FILE__)));
include_once ROOT_PATH.'inc/config.php';
include_once ROOT_PATH.'inc/config_account.php';
include_once ROOT_PATH."inc/function.php";
$key_arr = array(
    8=>array(
        'ios' => array(
            'appid'=>'10086',
            'appkey' =>'31864c672441491990170507af676d70',
            'appsecret'=>'b9eb9e62742740e1811b59ffd913b371',
        ),
        'android' => array(
            'appid'=>'10086',
            'appkey' =>'31864c672441491990170507af676d70',
            'appsecret'=>'b9eb9e62742740e1811b59ffd913b371',
        ),
    )
);
function getdbdata(){
	$conn1 = ConnServer("203.66.13.158:3356","gameusertj","df,yyo67.yyo,ddjh","pokegametw");
	$sql = 'select DBName,idserver1 from g_dbconfig';
	$query_account = mysqli_query($conn1, $sql);
	$dbdata = array();
	while($v = @mysqli_fetch_assoc($query_account)){
		$myservers = explode(',', $v['idserver1']);
		if(empty($v['DBName'])){
			foreach ($myservers as $value){
				if(substr($value, 1,1) == 9){ //pk服
					continue;
				}
				$myserver = explode('-', $value);
				if(!isset($myserver[1])){
					$myserver[1] = $myserver[0];
				}
				$dbdata[] = array($conn1,$myserver[0],$myserver[1]);
			}
			
		}else{
			$conn2 = ConnServer("203.66.13.158:3357","gameusertj","df,yyo67.yyo,ddjh","pokegametw2");
			foreach ($myservers as $value){
				if(substr($value, 1,1) == 9){ //pk服
					continue;
				}
				$myserver = explode('-', $value);
				if(!isset($myserver[1])){
					$myserver[1] = $myserver[0];
				}
				$dbdata[] = array($conn2,$myserver[0],$myserver[1]);
			}
		}
	}
	return $dbdata;
}

function mydb($serverid){
	$conn1 = ConnServer("203.66.13.158:3356","gameusertj","df,yyo67.yyo,ddjh","pokegametw");
	$sql = 'select DBName,idserver1 from g_dbconfig';
	$query_account = mysqli_query($conn1, $sql);
	while($v = @mysqli_fetch_assoc($query_account)){
		if(empty($v['DBName'])){ //第一个库略过
			continue;
		}
		$myservers = explode(',', $v['idserver1']);
		foreach ($myservers as $value){
			if(substr($value, 1,1) == 9){ //pk服
				continue;
			}
			$myserver = explode('-', $value);
			if(!isset($myserver[1])){
				$myserver[1] = $myserver[0];
			}
			if($serverid>=$myserver[0] && $serverid<=$myserver[1]){
				write_log(ROOT_PATH."log","gangtai_getserver_error_","$serverid, 2库".date("Y-m-d H:i:s")."\r\n");
				return ConnServer("203.66.13.158:3357","gameusertj","df,yyo67.yyo,ddjh","pokegametw2");
				break;
			}
		}
	}
	write_log(ROOT_PATH."log","gangtai_getserver_error_","$serverid, 1库".date("Y-m-d H:i:s")."\r\n");
	return $conn1;
}
function insert_batch($table,$savedatas)
{
	$conn = SetConn(88);
	$sql = "insert into $table(".implode(',', array_keys($savedatas[0])).") values";
	foreach ($savedatas as $key=>$value){
		$sql .= "(".implode_new(',', array_values($value))."),";
	}
	$msql = rtrim($sql,',') . " ON DUPLICATE KEY UPDATE ";
	foreach ($savedatas[0] as $k=>$v){
		$msql .= "$k=values($k),";
	}
	$result = @mysqli_query($conn, rtrim($msql,','));
	if($result){
		return true;
	}
	return false;
}
function implode_new($sp , $data){
	$str = '';
	foreach ($data as $v){
		$str .= "'{$v}'"."$sp";
	}
	return rtrim($str,"$sp");
}
function subTable($accountId, $table, $sum){
	$suffix = $accountId%$sum;
	$s = sprintf('%03d', $suffix);
	return $table.$s;
}


