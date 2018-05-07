<?php
/*$config = include dirname ( __FILE__ ) . '/../config/config.php';
$querysql = "SELECT redlevel,GROUP_CONCAT(CONCAT('(',department,') ',name)) info FROM `redpack` where nper='$nper' GROUP BY redlevel desc";
// echo $querysql;die;
$result = mysqli_query ( $con, $querysql );
$data = array ();
while ( $row = @mysqli_fetch_assoc ( $result ) ) {
	$data [$row ['redlevel']] = $config [$row ['redlevel']] . '获得者：' . $row ['info'];
}
// 释放资源
$result->close ();
// 关闭连接
$con->close ();

$dbsdk = $this->load->database ( 'sdk', true );
$handle = fopen ( "C:\\Users\\Administrator\\Desktop\\google_callback_info_all_180323.txt", "r" );
set_time_limit(0);
$i = 0;
if ($handle) {
	while ( ! feof ( $handle ) ) {
		$buffer = fgets ( $handle, 9096 );
		$sarr = explode ( 'post=', $buffer );
		$sarr = explode ( ',get=a:0:{}, ', $sarr[1] );
		$data = unserialize($sarr[0]);
		$data = base64_decode($data['sinedData']);
		$google_wallet_data = str_replace('PurchaseInfo(type:inapp):', '', $data);
		$walletData = json_decode($google_wallet_data, true);
		$developerPayloadArr = explode('_', $walletData['developerPayload']);
		$accountId = $developerPayloadArr[2];
		if($accountId == '4751101'){
			echo $sarr[1].'   '.$google_wallet_data.PHP_EOL;
			echo '<br/>';
		}
		
		echo $i++;
		
	}
	fclose ( $handle );
}die;
function https_post($url, $data, $i = 0) {
	$i++;
	$str = '';
	if ($data) {
		foreach ( $data as $key => $value ) {
			$str .= $key . "=" . $value . "&";
		}
	}
	$curl = curl_init ( $url ); // 启动一个CURL会话
	curl_setopt ( $curl, CURLOPT_SSL_VERIFYPEER, 0 ); // 对认证证书来源的检查
	curl_setopt ( $curl, CURLOPT_SSL_VERIFYHOST, 2 ); // 从证书中检查SSL加密算法是否存在
	// curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
	curl_setopt ( $curl, CURLOPT_FOLLOWLOCATION, 1 ); // 使用自动跳转
	curl_setopt ( $curl, CURLOPT_AUTOREFERER, 1 ); // 自动设置Referer
	if ($str) {
		curl_setopt ( $curl, CURLOPT_POSTFIELDS, $str ); // Post提交的数据包
	}
	curl_setopt ( $curl, CURLOPT_TIMEOUT, 10 ); // 设置超时限制防止死循环
	// curl_setopt($curl, CURLOPT_HEADER, 0); // 显示返回的Header区域内容
	curl_setopt ( $curl, CURLOPT_RETURNTRANSFER, 1 ); // 获取的信息以文件流的形式返回
	// curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
	// curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
	// curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
	$tmpInfo = curl_exec ($curl);
	$Err = curl_error($curl);
	if (false === $tmpInfo || !empty($Err)) {
		if($i == 1)
			return https_post ($url, $data, $i);
		curl_close ($curl);
		return $Err;
	}
	curl_close ($curl);
	return $tmpInfo;
}
die ();*/
function giQSAccountHash($string, $sum = 999) {
	$string = "$string";
	$length = strlen ( $string );
	$result = 0;
	for($i = 0; $i < $length; $i ++) {
		$result = ($result * 397 + ord ( $string [$i] )) % $sum;
	}
	return $result + 1;
}
echo giQSAccountHash ( '00000000-0000-0000-0000-000000000000@u591' );
die ();
function ip_info($ip = NULL, $purpose = "location", $deep_detect = TRUE) {
	$output = NULL;
	if (filter_var ( $ip, FILTER_VALIDATE_IP ) === FALSE) {
		$ip = $_SERVER ["REMOTE_ADDR"];
		if ($deep_detect) {
			if (filter_var ( @$_SERVER ['HTTP_X_FORWARDED_FOR'], FILTER_VALIDATE_IP ))
				$ip = $_SERVER ['HTTP_X_FORWARDED_FOR'];
			if (filter_var ( @$_SERVER ['HTTP_CLIENT_IP'], FILTER_VALIDATE_IP ))
				$ip = $_SERVER ['HTTP_CLIENT_IP'];
		}
	}
	$purpose = str_replace ( array (
			"name",
			"\n",
			"\t",
			" ",
			"-",
			"_" 
	), NULL, strtolower ( trim ( $purpose ) ) );
	$support = array (
			"country",
			"countrycode",
			"state",
			"region",
			"city",
			"location",
			"address" 
	);
	$continents = array (
			"AF" => "Africa",
			"AN" => "Antarctica",
			"AS" => "Asia",
			"EU" => "Europe",
			"OC" => "Australia (Oceania)",
			"NA" => "North America",
			"SA" => "South America" 
	);
	if (filter_var ( $ip, FILTER_VALIDATE_IP ) && in_array ( $purpose, $support )) {
		$ipdat = @json_decode ( file_get_contents ( "http://www.geoplugin.net/json.gp?ip=" . $ip ) );
		if (@strlen ( trim ( $ipdat->geoplugin_countryCode ) ) == 2) {
			switch ($purpose) {
				case "location" :
					$output = array (
							"city" => @$ipdat->geoplugin_city,
							"state" => @$ipdat->geoplugin_regionName,
							"country" => @$ipdat->geoplugin_countryName,
							"country_code" => @$ipdat->geoplugin_countryCode,
							"continent" => @$continents [strtoupper ( $ipdat->geoplugin_continentCode )],
							"continent_code" => @$ipdat->geoplugin_continentCode 
					);
					break;
				case "address" :
					$address = array (
							$ipdat->geoplugin_countryName 
					);
					if (@strlen ( $ipdat->geoplugin_regionName ) >= 1)
						$address [] = $ipdat->geoplugin_regionName;
					if (@strlen ( $ipdat->geoplugin_city ) >= 1)
						$address [] = $ipdat->geoplugin_city;
					$output = implode ( ", ", array_reverse ( $address ) );
					break;
				case "city" :
					$output = @$ipdat->geoplugin_city;
					break;
				case "state" :
					$output = @$ipdat->geoplugin_regionName;
					break;
				case "region" :
					$output = @$ipdat->geoplugin_regionName;
					break;
				case "country" :
					$output = @$ipdat->geoplugin_countryName;
					break;
				case "countrycode" :
					$output = @$ipdat->geoplugin_countryCode;
					break;
			}
		}
	}
	return $output;
}

echo ip_info ( "173.252.110.27", "country" );