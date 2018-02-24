<?php
require_once('config.php');
$post = 'a:30:{s:19:"transaction_subject";s:0:"";s:12:"payment_date";s:25:"19:13:54 Jan 08, 2018 PST";s:8:"txn_type";s:10:"web_accept";s:9:"last_name";s:3:"M J";s:17:"residence_country";s:2:"BR";s:9:"item_name";s:8:"8_nm_360";s:13:"payment_gross";s:4:"5.99";s:11:"mc_currency";s:3:"USD";s:8:"business";s:14:"1069956@qq.com";s:12:"payment_type";s:7:"instant";s:22:"protection_eligibility";s:10:"Ineligible";s:11:"verify_sign";s:56:"AwG41gSznkUi.uZhid-szClqYHymAaVqagwIXlXNTgJwWI7Pw.BR8mFB";s:12:"payer_status";s:10:"unverified";s:11:"payer_email";s:21:"dadagog13@outlook.com";s:6:"txn_id";s:17:"0FW27717KC8580507";s:8:"quantity";s:1:"1";s:14:"receiver_email";s:14:"1069956@qq.com";s:10:"first_name";s:7:"Nelcina";s:7:"invoice";s:32:"8_6001_1717417_nm_360_1515467592";s:8:"payer_id";s:13:"RUR8Y86Z2HGSA";s:11:"receiver_id";s:13:"5TCVTNT2RLK5U";s:11:"item_number";s:0:"";s:14:"payment_status";s:9:"Completed";s:11:"payment_fee";s:4:"0.56";s:6:"mc_fee";s:4:"0.56";s:8:"mc_gross";s:4:"5.99";s:6:"custom";s:0:"";s:7:"charset";s:5:"UTF-8";s:14:"notify_version";s:3:"3.8";s:12:"ipn_track_id";s:13:"5ea30e3c515b0";}';
$response = unserialize($post);
$orderinfo = $response['invoice'];
$extendsInfoArr = explode('_', $orderinfo);
$gameId = $extendsInfoArr[0];
$serverId = $extendsInfoArr[1];
$accountId = $extendsInfoArr[2];
$type = $extendsInfoArr[3];
global $key_arr;
$response['cmd'] = '_notify-validate';
$url= $key_arr[$gameId][$type]['action'];
$resultstr = https_post($url, $response);
print_r($resultstr);die;