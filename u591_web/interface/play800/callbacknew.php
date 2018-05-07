<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2016/12/9
 * Time: 上午11:24
 */
include_once 'config.php';
$post = serialize($_POST);
$get = serialize($_GET);
write_log(ROOT_PATH."log","play800new_callback_log_","post=$post,get=$get".date("Y-m-d H:i:s")."\r\n");

$data = json_decode(set_key( 1 ,  $_POST['msg'] ),true);
$member_data = array(
		'order_no' 		=> $data['order_code'],
		'order_id' 	=> $data['order_no'],
		'money' 		=> $data['amount'],
		'pay_order_id' 	=> $data['pay_order_id'],
		'order_time' 	=> $data['order_time'],
);
$postData['a'] = 'membermsgverify';
$postData['data'] = set_key( 0 , json_encode( $member_data ) );

$resultArr = doCurl($postData);
$result = json_encode($resultArr);
write_log(ROOT_PATH."log","play800new_callback_result_","result=$result, postData=".json_encode($postData).", post=$post,get=$get,".date("Y-m-d H:i:s")."\r\n");
if($resultArr['code'] != '200' ){
	write_log(ROOT_PATH."log","play800new_callback_error_","sign error. post=$post,data= ".json_encode($data).date("Y-m-d H:i:s")."\r\n");
	exit('fail');
}
$extArr = explode('_', $data['memo']);
if(!isset($extArr[0]) || !isset($extArr[1]) || !isset($extArr[2]) || !isset($extArr[3])){
    write_log(ROOT_PATH."log","play800new_callback_error_","prams error. post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
    exit('fail');
}
$gameId = $extArr[0];
$serverId = $extArr[1];
$accountId = $extArr[2];
$type = $extArr[3];
$isgoods = $extArr[4];

global $accountServer;
$accountConn = $accountServer[$gameId];
$conn = SetConn($accountConn);
if($conn == false){
    write_log(ROOT_PATH."log","play800new_callback_error_","post=$post,get=$get,msg=account mysql error, ".date("Y-m-d H:i:s")."\r\n");
    exit('error');
}
$sql_account = "select NAME,dwFenBaoID,clienttype from account where id ='$accountId' limit 1;";
$query_account = @mysqli_query($conn, $sql_account);
$result_account = @mysqli_fetch_assoc($query_account);

if(!$result_account['NAME']){
    write_log(ROOT_PATH."log","play800new_callback_error_", "account is not exist! post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
    exit('fail');
}else{
    $PayName = $result_account['NAME'];
    $dwFenBaoID = $result_account['dwFenBaoID'];
    $clientType = $result_account['clienttype'];
}
$ch = explode('@', $PayName);
$chname = $ch[1];
if($chname != 'play800'){
	write_log(ROOT_PATH."log","name_play800new_", "account is $PayName !  post=$post,get=$get, ".date("Y-m-d H:i:s")."\r\n");
}
$orderId = $data['order_no'];
$conn = SetConn(88);
//判断订单id情况
$payMoney = $data['amount'];
$sql = "select id,rpCode from web_pay_log where OrderID='$orderId' limit 1";
$query = @mysqli_query($conn,$sql);
$result_count = @mysqli_fetch_assoc($query);
if($result_count['id']){
    write_log(ROOT_PATH."log","play800new_callback_error_", "order is exist! post=$post, get=$get, ".date("Y-m-d H:i:s")."\r\n");
    exit('success');
}
$Add_Time=date('Y-m-d H:i:s');
//payType为1的时候苹果支付 其他线下支付
$CPID = 187;
$sql="insert into web_pay_log (CPID,PayID,PayName,ServerID,PayMoney,OrderID,dwFenBaoID,Add_Time,SubStat,game_id,clienttype,rpCode,packageName)";
$sql=$sql." VALUES ('$CPID',$accountId,'$PayName','$serverId','$payMoney','$orderId','$dwFenBaoID','$Add_Time','1','$gameId','$clientType', '1','$isgoods')";
if (mysqli_query($conn,$sql) == False){
    write_log(ROOT_PATH."log","play800new_callback_error_", $sql.", post=$post, get=$get, ".mysqli_error($conn)."  ".date("Y-m-d H:i:s")."\r\n");
    exit('fail');
} else {
    WriteCard_money(1,$serverId, $payMoney,$accountId, $orderId,8,0,0,$isgoods);
    //统计
    global $tongjiServer;
    $tjAppId = $tongjiServer[$gameId];
    sendTongjiData($gameId,$accountId,$serverId,$dwFenBaoID,0,$payMoney,$orderId,1,$tjAppId);
    exit('success');
}