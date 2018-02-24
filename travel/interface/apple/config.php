<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2017/2/23
 * Time: 下午2:07
 */
define('ROOT_PATH', str_replace('interface/apple/config.php', '', str_replace('\\', '/', __FILE__)));
include_once ROOT_PATH.'inc/config.php';
include_once ROOT_PATH.'inc/config_account.php';
include_once ROOT_PATH."inc/function.php";

$appleIdVal = array(
		
		'alxxm_400'                 =>array('6', 400	, 'CNY'),
		'alxxm_1000'                =>array('12', 1000	, 'CNY'),
		'alxxm_1800'                =>array('18', 1800	, 'CNY'),
		'alxxm_2800'                =>array('25', 2800	, 'CNY'),
		

);