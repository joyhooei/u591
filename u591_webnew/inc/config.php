<?php
$mdString='fu;djf,jk7g.fk*o3l';
date_default_timezone_set('Etc/GMT-7');
function SetConn($ServerInfo){
        switch ($ServerInfo) {
                //web database
                case 88:
                        return ConnServer("127.0.0.1","root","root","u591");
                        break;
                //acount database
                case 85:
                        return ConnServer("119.28.77.164:3356", "gameuser", "rio8t89o,690.60fk", "account");
                        break;
               
                default:
                        return false;
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
