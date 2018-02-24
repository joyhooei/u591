<?php
include_once 'config.php';
$post = serialize($_POST);
$get = serialize($_GET);

write_log(ROOT_PATH."log","91_callback_log_", "post=$post, get=$get,"." ".date("Y-m-d H:i:s")."\r\n");

$PayStatus = intval($_REQUEST['PayStatus']);
if($PayStatus !=1){
	//91返回的支付状态 0失败 1成功
	exit('{"ErrorCode":"1","ErrorDesc":"success"}');
}
$sdk = new Sdk();
$CooOrderSerial = $_REQUEST['CooOrderSerial'];
$Res = $sdk->query_pay_result($CooOrderSerial);
$Res_str = json_encode($Res);

write_log(ROOT_PATH."log","91_callback_result_log", "result=$Res_str, ".date("Y-m-d H:i:s")."\r\n");
if(isset($Res['ErrorCode']) && $Res['ErrorCode'] == '1'){
	$Uin=$_REQUEST['Uin'];
	$OriginalMoney=$_REQUEST['OriginalMoney'];
	$GoodsId = intval($_REQUEST['GoodsId']);
	
	$OriginalMoney=sprintf("%01.2f",$OriginalMoney);
	$OrderMoney=sprintf("%01.2f",$OrderMoney);
	
	$conn = SetConn(81);
	$PayName = mysqli_real_escape_string($conn,$Uin.'@91');
	$sql = "select id from account where name='$PayName'";
	$query = mysqli_query($conn,$sql);
	$result = array();
	$result = mysqli_fetch_assoc($query);
	$PayID = $result['id'];
	if(!$PayID){
		write_log(ROOT_PATH."log","91_callback_error_log", "acount is not exist! ".date("Y-m-d H:i:s")."\r\n");
		exit('{"ErrorCode":"7","ErrorDesc":"account is not exist"}');
	}
	$conn = SetConn(88);
	$sql = "select * from web_pay_log where OrderID = '$CooOrderSerial'";
	$query = mysqli_query($conn,$sql);
	$result = mysql_fetch_array($query);
	if($result['rpCode'] == 1){
		exit('{"ErrorCode":"1","ErrorDesc":"成功"}');
	}
	
	$Add_Time = date('Y-m-d H:i:s');
	$rpTime = date('Y-m-d H:i:s');
	$rpCode= '0';
	$CPID = "12";
	$game_id = 7;
	$PayCode='91PAY';
	$PayMoney = intval(substr($GoodsId,-4,4));
	$ServerID = floor($GoodsId/10000);
	
	$sql="insert into web_pay_log (CPID,PayCode,PayID,PayName,ServerID,PayMoney,OrderID,Add_Time,game_id,rpCode) 
			VALUES ($CPID,'$PayCode','$PayID','$PayName',$ServerID,'$PayMoney','$CooOrderSerial','$Add_Time',$game_id,'$rpCode')";
	if(mysqli_query($conn,$sql) == false){
		write_log(ROOT_PATH."log","91_callback_error_log", "mysql error! mysql=$sql, ".date("Y-m-d H:i:s")."\r\n");
		exit('{"ErrorCode":"6","ErrorDesc":"mysql error!"}');
	}	
	updatePayLog($CooOrderSerial, 1, $PayID);
	updatePoints($PayID,$PayMoney,'f_dx',$CooOrderSerial);//修改积分
	updateRankUp($PayID,'f_dx');//修改等级
	WriteCard_money(1,$ServerID, $PayMoney,$PayID, $CooOrderSerial);//写入游戏库
	WritePayMsg(0,$ServerID,$PayID,$CooOrderSerial,$PayMoney,$game_id);//写入客户端提醒消息

	exit('{"ErrorCode":"1","ErrorDesc":"成功"}');
} else{
	write_log(ROOT_PATH."log","91_callback_error_log", "sign error! res=$Res_str, ".date("Y-m-d H:i:s")."\r\n");
	exit('{"ErrorCode":"5","ErrorDesc":"sign无效"}');
}

function updatePayLog($OrderID, $rpCode, $PayID){
	$conn = SetConn(88);
	$rpTime=date('Y-m-d H:i:s');
	$sql="update web_pay_log set rpCode='$rpCode', rpTime='$rpTime' where PayID=$PayID and OrderID='$OrderID'";
	if (mysqli_query($conn,$sql) == False){
		write_log(ROOT_PATH."log","91_callback_error_log_", "sql error! sql=$sql, ".date("Y-m-d H:i:s")."\r\n");
	}
}
?>