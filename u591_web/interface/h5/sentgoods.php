<?php
/**
 * Created by PhpStorm.
 * User: wangtao
 * Date: 20170524
 * Time: 涓婂崍10:02
 */
include 'config.php';
$post = serialize ( $_POST );
$get = serialize ( $_GET );
write_log ( ROOT_PATH . "log", "h5_goods_info_", "post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
$data = $_REQUEST;
$sign = $data ['sign'];
unset ( $data ['sign'] );
ksort ( $data );
$signstr = implode ( '', $data ) . $secret;
$mysign = md5 ( $signstr );
if ($sign != $mysign) {
	write_log ( ROOT_PATH . "log", "h5_goods_error_", $signstr . ",sign error, post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
	$returnarr = [ 
			'code' => 1,
			'message' => 'sign error' 
	];
	exit ( json_encode ( $returnarr ) );
}
$serverId = $data ['serverid'];
$userId = $data ['userid'];
$sid = togetherServer ( $serverId );
$table = betaSubTable ( $sid, 'u_gmtool', 1000 );
$conn = SetConn ( $sid );

if ($conn == false){
	write_log ( ROOT_PATH . "log", "h5_goods_error_", "web error, post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
	$returnarr = [
			'code' => 1,
			'message' => 'web error'
	];
	exit ( json_encode ( $returnarr ) );
}
$message = $data ['message'];
$type1 = intval ( $data ['type1'] );
$param1 = intval ( $data ['param1'] );
$amount1 = intval ( $data ['amount1'] );
$type2 = intval ( $data ['type2'] );
$param2 = intval ( $data ['param2'] );
$amount2 = intval ( $data ['amount2'] );
$type3 = intval ( $data ['type3'] );
$param3 = intval ( $data ['param3'] );
$amount3 = intval ( $data ['amount3'] );
$type4 = intval ( $data ['type4'] );
$param4 = intval ( $data ['param4'] );
$amount4 = intval ( $data ['amount4'] );
$cost_emoney = intval ( $data ['cost_emoney'] );


$sql = "insert into $table(type, serverid, param, message, award_type1, award_param1, award_amount1, award_type2, award_param2, award_amount2,  award_type3, award_param3, award_amount3,  award_type4, award_param4, award_amount4";
$msql = " values(8, '$sid', '$userId' ,'$message', '$type1', '$param1', '$amount1', '$type2', '$param2', '$amount2', '$type3', '$param3', '$amount3', '$type4', '$param4', '$amount4'";
if($cost_emoney){
	$sql .= ",cost_emoney";
	$msql .= ",$cost_emoney";
}
$sql .= ")";
$msql .= ")";
$sql .= $msql;
if (false == mysqli_query ( $conn, $sql )) {
	write_log ( ROOT_PATH . 'log', 'h5_goods_fail_', "player=$userId,sql=$sql ,".mysqli_error($conn) . date ( 'Y-m-d H:i:s' ) . "\r\n" );
	$returnarr = [
			'code' => 1,
			'message' => 'sent fail'
	];
	exit ( json_encode ( $returnarr ) );
}
$returnarr = [ 
		'code' => 0,
		'message' => 'success' 
];
write_log ( ROOT_PATH . "log", "h5_goods_success_", "$sql, post=$post,get=$get, " . date ( "Y-m-d H:i:s" ) . "\r\n" );
exit ( json_encode ( $returnarr ) );