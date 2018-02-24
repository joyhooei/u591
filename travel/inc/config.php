<?php
$mdString = 'fu;djf,jk7g.fk*o3l';
date_default_timezone_set('Asia/Shanghai');
function SetConn($ServerInfo,$accnum=0,$type=0) {
	switch ($ServerInfo) {
		// web database
		case 88 :
			return ConnServer ( "127.0.0.1", "root", "root", "travel" );
			break;
		// acount database
		case 10 : //旅行熊猫(国内)
			switch ($type) {
				case 0: //bind分表
				case 1: //account分表
					switch ($accnum) { //表数字
						default :
							return ConnServer("122.112.226.86:3356","gameuser","rio8t89o,690.60fk","account");
							break;
					}
					break;
				}
			break;
		// server database
		default :
			return false;
			break;
	}
}
/**
 * 合服函数
 * 
 * @param
 *        	$server
 * @return int
 */
function togetherServer($server) {
	switch ($server) {
		default :
			return $server;
			break;
	}
}
function ConnServer($db_host, $db_user, $db_pass, $db_database) {
	$db = @mysqli_connect ( $db_host, $db_user, $db_pass, $db_database );
	if (! $db) {
		$db = @mysqli_connect ( $db_host, $db_user, $db_pass, $db_database );
	}
	if (! $db) {
		write_log ( ROOT_PATH . "log", "mysql_connect_log_", "mysql connect error," . mysqli_connect_error () . ", $db_host,$db_user,$db_pass,$db_database, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
		// exit('mysql connect error.');
		return false;
	}
	return $db;
}
?>
