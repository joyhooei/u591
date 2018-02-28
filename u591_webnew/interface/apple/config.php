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
		'cdgbrb_60'     => array('0.99', 60	, 'USD'),
		'tgrbhryny_300'    => array('4.99', 300,'USD'),
		'ynjunh_600'    => array('9.99', 600,'USD'),
		'myurmy_900'    => array('14.99', 900, 'USD'),
		'bhtrnsz_1500'   => array('24.99', 1500, 'USD'),
		'hiutgyg_3000'   => array('49.99', 3000, 'USD'),
		'srsegv_6000'   => array('99.99', 6000, 'USD'),
		'kuykg_25'   => array('5.99', 360, 'USD'),
		
    'scgpokevs_80'      => array('0.99','90', 'USD'), //美元 元宝
	'scgpokevs_84'      => array('0.99','90', 'USD'), //美元 元宝
    'scgpokevs_425'     => array('4.99', '450', 'USD'),
    'scgpokevs_851'     => array('9.99', '910', 'USD'),
    'scgpokevs_1703'    => array('19.99', '1820', 'USD'),
    'scgpokevs_4259'    => array('49.99', '4540', 'USD'),
    'scgpokevs_8519'    => array('99.99', '9090', 'USD'),
		
		'cfrewfc_75'      => array('75','80', 'RUB'), //
		'pndfb_379'      => array('379','390', 'RUB'), //
		'hrwgr_1490'     => array('1490', '1690', 'RUB'),
		'sdgtry_3790'     => array('3790', '4290', 'RUB'),
		'ythtgdf_7490'    => array('7490', '8500', 'RUB'),
		'dgbety_299'    => array('299', '200', 'RUB'),
		

		'dscqe_6'     => array('0.99', 90	, 'USD'),
		'cfsdfef_12'    => array('1.99', 180,'USD'),
		'hfjafewfvf_24'    => array('3.99', 360,'USD'),
		'trhrthvg_30'    => array('4.99', 450, 'USD'),
		'xcthrtm_68'   => array('9.99', 910, 'USD'),
		'xdergeh_128'   => array('19.99', 1820, 'USD'),
		'zswre3wz_328'   => array('49.99', 4540, 'USD'),
		'dxt4td_648'   => array('99.99', 9090, 'USD'),
		
		'hgnhg_6'     => array('0.99', 60, 'USD'),
		'ftd_30'    => array('4.99', 280,'USD'),
		'bhj_68'    => array('9.99', 600,'USD'),
		'gfyutf_98'    => array('14.99', 870, 'USD'),
		'crfyc_168'   => array('24.99', 1450, 'USD'),
		'ftui_328'   => array('49.99', 3000, 'USD'),
		'uitgy_648'   => array('99.99', 5940, 'USD'),
		'bvhb_36'   => array('5.99', 360, 'USD'),
		
		'acfrewfc_80'      => array('75','80', 'RUB'), //
		'apndfb_390'      => array('379','390', 'RUB'), //
		'ahrwgr_1690'     => array('1490', '1690', 'RUB'),
		'asdgtry_4290'     => array('3790', '4290', 'RUB'),
		'aythtgdf_8500'    => array('7490', '8500', 'RUB'),
		'adgbety_299'    => array('299', '200', 'RUB'),

);