<?php
define('ROOT_PATH', str_replace('interface/huaweiInt/config.php', '', str_replace('\\', '/', __FILE__)));
include_once ROOT_PATH.'inc/config.php';
include_once ROOT_PATH.'inc/config_account.php';
include_once ROOT_PATH."inc/function.php";

$key_arr = array(
    8=>array(
    		'android'=>array(
    				'publicKey'    =>'-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkf62tdKJiRWvxZTC2y6T
wCFEf+wYET4GyMsUn/4cvdBmSKS03mb29uv6OXj4JUsOifNWMkGrGZ7RC4D9FHGA
0A2SaK2NDjyHtINVqkV/ocMqZWvHpvPzYHIl316DObnDYx/tTIWEi7GaCBVp9zwH
LORndFZoeMHiQ7tvjW0E4aAfmN36BXEed1RMVZSjjkBZiLN+8nKUJEfI7n3XQJWx
ytIxfETarurEVCvmj6nIGbTzI04R3pSC0E2XPvCktPFLcDHRhrSIoqbFVjru5p7E
3VIjfIwHi3oCesKX0Ptghyawt4jlKu+U0iVx6Vy/hev0tKhT4XW4U3PvnHcYlC2f
qwIDAQAB
-----END PUBLIC KEY-----',
    				'appid'=>'1000150897',
    		),
    ),
);
?>
