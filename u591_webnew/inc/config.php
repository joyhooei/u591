<?php
$mdString='fu;djf,jk7g.fk*o3l';
date_default_timezone_set('Etc/GMT-7');
function SetConn($ServerInfo,$accnum=0,$type=0) {
        switch ($ServerInfo) {
                //web database
                case 88:
                        return ConnServer("127.0.0.1","root","root","u591");
                        break;
                //acount database
                case 100: //阿拉伯
                case 101: //俄罗斯
                case 102: //泰国
                case 103: //印尼
                        return ConnServer("18.194.33.115:3356", "gameuser", "rio8t89o,690.60fk", "account");
                        break;
              
                case 3999: 
                        return ConnServer("18.194.33.115:3356", "gameuser", "rio8t89o,690.60fk", "pokegamearsh");
                        break;
                case 8999: 
                        return ConnServer("18.194.33.115:3356", "gameuser", "rio8t89o,690.60fk", "pokegamerush");
                        break; 
                default:
                        return false;
                        break;
        }
}
/**
 * 合服函数
 * @param $server
 * @return int
 */
function togetherServer($server){
	switch ($server){
		default :
			return $server;
			break;
	}

}
function ConnServer($db_host, $db_user, $db_pass, $db_database){
        $db = @mysqli_connect($db_host,$db_user,$db_pass, $db_database);
        if(!$db){
                $db = @mysqli_connect($db_host,$db_user,$db_pass, $db_database);
        }
        if(!$db){
                write_log(ROOT_PATH."log","mysql_connect_log_","mysql connect error,".mysqli_connect_error().", $db_host,$db_user,$db_pass,$db_database, ".date("Y-m-d H:i:s")."\r\n");
                //exit('mysql connect error.');
                return false;
        }
        return $db;
}
?>
