<?php
$mdString = 'fu;djf,jk7g.fk*o3l';
date_default_timezone_set ( 'Etc/GMT-3' );
function SetConn($ServerInfo) {
	switch ($ServerInfo) {
		// web database
		case 88 :
			return ConnServer ( "127.0.0.1", "root", "root", "u591_hj" );
			break;
		// server database
		case 100 : // 阿拉伯
			return ConnServer ( "18.194.33.115:3356", "gameuser", "rio8t89o,690.60fk", "account" );
			break;
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
