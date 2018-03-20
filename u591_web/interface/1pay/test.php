<?php
/*include_once 'config.php';
$myconn = SetConn(88);
$sql = "select orderid,orderinfo,money from vnd;";
$query = @mysqli_query($myconn, $sql);
$conn = SetConn(85);
$time = time();
$i=0;
while($result = @mysqli_fetch_array($query)){
	$arr = explode('_', $result['orderinfo']);
	$serverId = $arr[1];
	$accountId = $arr[2];
    $sql_account = "select  NAME,dwFenBaoID,clienttype  from account where id = '$accountId' limit 1";
    $query_account = mysqli_query($conn, $sql_account);
    $result_account = @mysqli_fetch_assoc($query_account);
    $PayName = $result_account['NAME'];
    $dwFenBaoID = $result_account['dwFenBaoID'];
    $insertsql = "insert into web_manual_log(game_id,server_id,name,order_id,dwFenBaoID,emoney,addtime,operator,verify_level,remark,account_id,account_name,payCode)values
    		(8,$serverId,'$PayName','{$result['orderid']}','$dwFenBaoID','{$result['money']}','$time','admin','1','web数据库连接失败补单','$accountId','$PayName','VND')";
    if(!mysqli_query($myconn, $insertsql)){
    	echo mysqli_error($conn);die;
    }
    echo $i++;
    echo PHP_EOL;
}
die;

$access_key = 'uzc5r6mjo1myb3skppam';
$pin = '0779613481244';
$serial = '78431540329';
$transRef = '17121212333641187649';
$type = 'viettel';
$secret = '4axe31lz16g22u5fhpg3gi8eurcb4rie';
$data_ep = "access_key=" . $access_key . "&pin=" . $pin . "&serial=" . $serial . "&transId=&transRef=" . $transRef . "&type=" . $type;
$signature_ep = hash_hmac("sha256", $data_ep, $secret);
$data_ep.= "&signature=" . $signature_ep;
 $url = 'https://api.1pay.vn/card-charging/v5/query';
    $query_api_ep = execPostRequest($url, $data_ep);
    print_r($query_api_ep);die;*/
