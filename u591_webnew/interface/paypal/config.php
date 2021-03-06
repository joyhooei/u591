<?php
define('ROOT_PATH', str_replace('interface/paypal/config.php', '', str_replace('\\', '/', __FILE__)));
include_once ROOT_PATH.'inc/config.php';
include_once ROOT_PATH.'inc/config_account.php';
include_once ROOT_PATH."inc/function.php";

$key_arr = array(
		100=>array(
				'ar'=>array(
						'business'=>'wenschan@hotmail.com',//'821586178@qq.com',//卖家帐号 也就是收钱的帐号
						'currency_code'=>'USD',// 货币
						'return'=>'http://pokeruweb.u776hainiu.com/interface/paypal/payment.php',// 支付成功后网页跳转地址
						'notify_url'=>'http://pokeruweb.u776hainiu.com/interface/paypal/callback.php',//'http://wanda.imwork.net:31783/interface/paypal/callback.php',//支付成功后paypal后台发送订单通知地址
						'cancel_return'=>'http://pokeruweb.u776hainiu.com/interface/paypal/cancel.php',//用户取消交易返回地址
						'action'=>'https://www.paypal.com/cgi-bin/websc', //通知地址//测试 https://www.sandbox.paypal.com/cgi-bin/webscr
						'charset'=>'utf-8',// 字符集
						'no_shipping'=>'1',// 不要求客户提供收货地址
						'app_key'=>'-vHwEf_fe7FmNrOaA0TBUHbX0lzqggg2OVGbQo9fHErRDPYI5KOaMFa2d74',//'cwxYc6p5RuN7X6_J1Cx1Pc8PWS1NfPBHkodsNFg1xPjHuBuKdacWS9IHfpS',
				),
		),
		101=>array(
				'els'=>array(
						'business'=>'wenschan@hotmail.com',//'821586178@qq.com',//卖家帐号 也就是收钱的帐号
						'currency_code'=>'RUB',// 货币
						'return'=>'http://pokeruweb.u776hainiu.com/interface/paypal/payment.php',// 支付成功后网页跳转地址
						'notify_url'=>'http://pokeruweb.u776hainiu.com/interface/paypal/callback.php',//'http://wanda.imwork.net:31783/interface/paypal/callback.php',//支付成功后paypal后台发送订单通知地址
						'cancel_return'=>'http://pokeruweb.u776hainiu.com/interface/paypal/cancel.php',//用户取消交易返回地址
						'action'=>'https://www.paypal.com/cgi-bin/websc', //通知地址//测试 https://www.sandbox.paypal.com/cgi-bin/webscr
						'charset'=>'utf-8',// 字符集
						'no_shipping'=>'1',// 不要求客户提供收货地址
						'app_key'=>'-vHwEf_fe7FmNrOaA0TBUHbX0lzqggg2OVGbQo9fHErRDPYI5KOaMFa2d74',//'cwxYc6p5RuN7X6_J1Cx1Pc8PWS1NfPBHkodsNFg1xPjHuBuKdacWS9IHfpS',
				),
				'RUB'=>array(
						'75.00'=>'80',
						'379.00'=>'390',
						'1490.00'=>'1690',
						'3790.00'=>'4290',
						'7490.00'=>'8500',
						'299.00'=>'200',
				),
		),
		102=>array(
				'th'=>array(
						'business'=>'wenschan@hotmail.com',//'821586178@qq.com',//卖家帐号 也就是收钱的帐号
						'currency_code'=>'USD',// 货币
						'return'=>'http://pokeruweb.u776hainiu.com/interface/paypal/payment.php',// 支付成功后网页跳转地址
						'notify_url'=>'http://pokeruweb.u776hainiu.com/interface/paypal/callback.php',//'http://wanda.imwork.net:31783/interface/paypal/callback.php',//支付成功后paypal后台发送订单通知地址
						'cancel_return'=>'http://pokeruweb.u776hainiu.com/interface/paypal/cancel.php',//用户取消交易返回地址
						'action'=>'https://www.paypal.com/cgi-bin/websc', //通知地址//测试 https://www.sandbox.paypal.com/cgi-bin/webscr
						'charset'=>'utf-8',// 字符集
						'no_shipping'=>'1',// 不要求客户提供收货地址
						'app_key'=>'-vHwEf_fe7FmNrOaA0TBUHbX0lzqggg2OVGbQo9fHErRDPYI5KOaMFa2d74',//'cwxYc6p5RuN7X6_J1Cx1Pc8PWS1NfPBHkodsNFg1xPjHuBuKdacWS9IHfpS',
				),
				'USD'=>array(
						'0.99'=>'75',
						'4.99'=>'385',
						'9.99'=>'660',
						'14.99'=>'1050',
						'24.99'=>'1750',
						'49.99'=>'3500',
						'99.99'=>'7000',
						'5.99'=>'360',
				),
		)
);
function getEmoney($gameId,$currency,$payMoney){
	global $key_arr;
	if(isset($key_arr [$gameId] [$currency] [$payMoney])){
		return $key_arr [$gameId] [$currency] [$payMoney];
	}
	switch ($currency) {
		case 'USD' :
			return ceil ( $payMoney * 60 ); // emoney
			break;
		default :
			return $key_arr [$gameId] [$currency] [$payMoney];
			break;
	}
}
