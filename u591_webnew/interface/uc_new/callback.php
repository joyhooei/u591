<?php
include_once 'config.php';
include_once 'ucGameServer/service/BaseSDKService.php';

$data = file_get_contents("php://input");

write_log(ROOT_PATH."log","wdj_callback_all_log_","data=$data, ".date("Y-m-d H:i:s")."\r\n");

$data_array = json_decode($data, true);

$sign = $data_array['sign'];
$orderId = $data_array['data']['orderId'];
$gameId = $data_array['data']['gameId'];
$ucid = $data_array['data']['accountId'];
$creator = $data_array['data']['creator'];
$payway = $data_array['data']['payWay'];
$amount = $data_array['data']['amount'];
$callbackInfo = $data_array['data']['callbackInfo'];
$orderStatus = $data_array['data']['orderStatus'];
$failedDesc = $data_array['data']['failedDesc'];
$cpOrderId = $data_array['data']['cpOrderId'];
if($orderStatus != 'S'){
	write_log(ROOT_PATH."log","wdj_callback_error_","status not s,data=$data, ".date("Y-m-d H:i:s")."\r\n");
	exit('FAILURE');
}
$callbackInfo_arr = explode("_",$callbackInfo);
$game_id = intval($callbackInfo_arr[0]) ? intval($callbackInfo_arr[0]) : 8;
$server_id = intval($callbackInfo_arr[1]);
$pay_id = intval($callbackInfo_arr[2]);
$isgoods =  intval($callbackInfo_arr[4]);

//$channel = $callbackInfo_arr[3];
//$apiKey = $key_arr[$game_id][$channel]['apiKey'];
$appkey = ConfigHelper::getStrVal("sdkserver.game.apikey");

$cpOrderIdStr = '';
if(!empty($cpOrderId))
	$cpOrderIdStr = 'cpOrderId='.$cpOrderId;

$signStr = "accountId=".$ucid."amount=$amount"."callbackInfo=$callbackInfo".$cpOrderIdStr."creator=$creator"."failedDesc=$failedDesc"."gameId=$gameId"."orderId=$orderId"."orderStatus=$orderStatus"."payWay=$payway".$appkey;
$sign_check = md5($signStr);
if($sign != $sign_check){
    write_log(ROOT_PATH."log","wdj_callback_error_","sign=$sign, mySign=$sign_check, signStr=$signStr, ".date("Y-m-d H:i:s")."\r\n");
    exit('FAILURE');
}

$conn = SetConn(88);
$sql = "select rpCode from web_pay_log where OrderID = '$orderId' and game_id='$game_id' limit 1;";
$query = mysqli_query($conn, $sql);
$result = @mysqli_fetch_array($query);

if($result['rpCode']==1 || $result['rpCode']==10){
    exit("SUCCESS");
}

$PayMoney = intval($amount);
if(!$result){
	$gameId = $game_id;
	$accountId = $pay_id;
	$result_account = getaccountinfo($gameId,$accountId);
    if(!$result_account['NAME']){
        write_log(ROOT_PATH."log","wdj_callback_error_", "account is not exist.  ".date("Y-m-d H:i:s")."\r\n");
        exit("FAILURE");
    }else{
        $PayName = $result_account['NAME'];
        $dwFenBaoID = $result_account['dwFenBaoID'];
        $clienttype = $result_account['clienttype'];
    }
    $ch = explode('@', $PayName);
    $chname = $ch[count($ch)-1];
    if(!in_array($chname, array('pp','ali','wdj','uc'))){
    	write_log(ROOT_PATH."log","name_ali_", "account is $PayName ! post=$post, get=$get, ".date("Y-m-d H:i:s")."\r\n");
    	exit("SUCCESS");
    }
    $conn = SetConn(88);
    $Add_Time=date('Y-m-d H:i:s');
    $sql="insert into web_pay_log (CPID,PayID,PayName,ServerID,PayMoney,data,OrderID,dwFenBaoID,Add_Time,SubStat,game_id,clienttype,packageName,rpCode)";
    $sql=$sql." VALUES (15,$pay_id,'$PayName','$server_id','$PayMoney','$PayMoney','$orderId','$dwFenBaoID','$Add_Time','1','$game_id','$clienttype','$isgoods',1)";
    if (mysqli_query($conn,$sql) == False){
        write_log(ROOT_PATH."log","wdj_callback_error_","sql=$sql, ".date("Y-m-d H:i:s")."\r\n");
        exit('FAILURE');
    }
    WriteCard_money(1,$server_id, $PayMoney,$pay_id, $orderId,8,0,0,$isgoods);
    //统计数据
    sendTongjiData($game_id,$pay_id,$server_id,$dwFenBaoID,0,$PayMoney,$orderId);
    exit("SUCCESS");
}
?>