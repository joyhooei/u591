<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2017/2/17
 * Time: 下午1:40
 */
define('ROOT_PATH', str_replace('interface/google/config.php', '', str_replace('\\', '/', __FILE__)));
include_once ROOT_PATH.'inc/config.php';
include_once ROOT_PATH.'inc/config_account.php';
include_once ROOT_PATH."inc/function.php";


$key_arr = array(
    100=>array(
    		'iosels'=>array(
    				'appId'     =>'756425793624-7cr2t3j83q90msvukff9kc81v0d6ainl.apps.googleusercontent.com',
    				'appSecret' =>'GYQVWA25Glvv6etiePAo_ePk',
    				'public_key'=>'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiKqdoMj+9eUeEYTcJGeBI3mfIkilXF/nMnUsTdqdUAGqUa6iQ1ncaDZaOEhr1GoH9PC9v7pVlBkBZGj0wVkSxS0H79e2br/ut7oOGCmxwt4h6Xmi+/UUJAd0MWPmUYI9XqJcVj+1mZAXRGSnMHKUtOi4CdP4BuNsuB3nsgi78WGQdTPq65blCLORqTNzDA9A64/Nw1/3vVoZxgYY+g6xh30ZmSK81Gec0QMoQEL0mLuZoKrJjED5ZnaCJFCVeV8PlaQCQE9eNpOAZiFJnuQU2C1eY3eIv687K6pzl38ikM9mqTHN0PCnfCPvsCB1BCV127L+5LUBVN4EoiJjiR72hQIDAQAB',
    		),
    		'androidels'=>array(
    				'appId'     =>'764064794233-jjcu00c98s1d653ol2nrruv9q2qcaoas.apps.googleusercontent.com',
    				'appSecret' =>'qL5PRO_Fcp5pliZ83gMoapaj',
    				'public_key'=>'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjCLznhfpPKiEkc//n+EcLSXoSFS+SzRaNruC52GXmQGIC82+aAnM8D25ioWjy34DD/1gTNRCxNuSvavKpDjPXTG3BIIvpQ/tM4kGn/pijI82N74YbWDGMdLQaqo90nsr8k+/rXaA1UF5rahl8vLaw8ngzBb849ZPaSCl9uVbifUZZucIeSRpNKtX0IAKC3vu9LgbEGMuvBchuuS0Idm7mrqy64F9YwxOxAt+xH9Y8Dp87lM2P5XVm8wxpXaIBh3wV3HMys6Tnme2+2lg93ELnLOM3yjGy6IgPQJfCvGM3P0RK6EnLyRGMrJbwU2QSKcDXHtXlxxHfGlU4DHWIqwqiwIDAQAB',
    		),
    		'androidels2'=>array(
    				'appId'     =>'263076265365-bn2vmai3ladrdc7igjcirj2c4ps5l8l0.apps.googleusercontent.com',
    				'appSecret' =>'NvMO3PSLzFFhY8Yt-4yQjKIB',
    				'public_key'=>'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw++TWFw7xAf/ZlK1vVgVjBXLERTeIN/3wcYFtdNBGq8yMCtxazdkruZZrTuzKwuDI0ag0qENF5ZkYPJ5DKGrcSrotsoVQYuR9ZcYo5/F/V+c8M4IZEWQPH9nlw4xZTZrrPMNzYQ65Aeo5nHeGcwvoFsH9JKMEQ00z81CljJNT7h2RyiAun5WeqvPgM9q6GAvPMmS/L1fYCK0mcJiNVYavlDnb07EWABK2XavJQ5Rvq6GVUTAUMY6857rt3y+g/dl4cTcwneUwhA/jStkUDhOG09lHpHysPRIiRV0UEq7SplFBVJpWXUMxmO6msRRGi0S/fPiDCx7+HrBMIi99NL97wIDAQAB',
    		),
    		'androidels3'=>array(
    				'appId'     =>'1001795515533-akk2k57tgvaa1sauge6loei1u6bd5h4r.apps.googleusercontent.com',
    				'appSecret' =>'m1JLspIFm-j5eOTi-YM2ZHPi',
    				'public_key'=>'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnsoEyH2LOz2jMTz3Y5Ngj1L8urIZUCwDq/yJzTKsgYEm+Vx1bxlPjevqkHx/rW+C0fVs+OWkHsACQS5yFIgqk7p1r9TPlKQIW/MpIp3W2WmCWm7dVRO+OIVW1m02FhwMSOmSreKZ39jeXAa2PhcCkG6k6nczwrnv3f85sXO8SbQd4aoe+WMwPVWFvexGOsr3eXW3v+fVrPQrgEK6+dQssfRAuwUpxjN/O8QSVTTk6kG83cns4cuF1/oAeMPcf/z+9mLWuzSVLJuS7ZqxenndaUFVauGQB4JkGNoImM+44PVr5eqmHpzHVWlu1CzCm+na5GJuSAZySNSGhV8OMydxYQIDAQAB',
    		),
    		'androidar'=>array(
    				'appId'     =>'13000614965-dhh3qk5ug4agk2vdblluudldi54p60mb.apps.googleusercontent.com',
    				'appSecret' =>'KNCvmRY4cAsF0a84cteDRnn1',
    				'public_key'=>'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAp4V3KnuWpwJFaxO54ZKTa4LMBJcBLnD8UIHXJFQms1K7stOh6A2VOd1vImDTP8dHGCn9KvwPlz+eSzJUYtIKdyGqFb9c2jKdb2w2ieih/XEjQ6Mwd9wV8Lcrz6sfl3BV+GgkQHLW81404fOqmKbpD/UQxLvcV3MIH/UXix5mzCX/ZwRWDoCZh9zy1cJowYEIPo9gheAKMpg0FQK9N4mHCyBFJU7V9OYgwv9u4mjL5PZJ6IlYbXJRHNoZnbjJkXgmyzk6iDlXkvHp+FMxH0D1v+B9BBOmFck5Srt+2q9pNGyCGPbXEJczGSo4zs172HRyjNmAQmyOZDufjLlDEfxYqQIDAQAB',
    		),

    ),
);
$google_id_value = array(
    'scgpokevs_84'     => array('0.99', 80	, 'USD'),
    'scgpokevs_425'    => array('4.99', 430,'USD'),
    'scgpokevs_851'    => array('9.99', 850,'USD'),
    'scgpokevs_1703'    => array('19.99', 1700, 'USD'),
    'scgpokevs_4259'   => array('49.99', 4260, 'USD'),
    'scgpokevs_8519'   => array('99.99', 8520, 'USD'),
		'dvfsdv_6'     => array('0.99', 80	, 'USD'),
		'vkcgvkz_30'    => array('4.99', 430,'USD'),
		'vgkfcsz_68'    => array('9.99', 850,'USD'),
		'zvsa_138'    => array('19.99', 1700, 'USD'),
		'huuyk_348'   => array('49.99', 4260, 'USD'),
		'kygmv_698'   => array('99.99', 8520, 'USD'),
		'cdewva_6'     => array('0.99', 80	, 'USD'),
		'vszcvrg_30'    => array('4.99', 430,'USD'),
		'grtyhb_68'    => array('9.99', 850,'USD'),
		'ntnfbxs_138'    => array('19.99', 1700, 'USD'),
		'bhnrtg_348'   => array('49.99', 4260, 'USD'),
		'jmuyn_698'   => array('99.99', 8520, 'USD'),
		'vfdrfvg_6'     => array('0.99', 80	, 'USD'),
		'ferf_30'    => array('4.99', 430,'USD'),
		'njsvfwf_68'    => array('9.99', 850,'USD'),
		'xvscdevf_138'    => array('19.99', 1700, 'USD'),
		'ceffz_348'   => array('49.99', 4260, 'USD'),
		'vrege_698'   => array('99.99', 8520, 'USD'),
		'cevwvc_60'     => array('0.99', 60	, 'USD'),
		'vfwcvvbe_300'    => array('4.99', 300,'USD'),
		'brgbdb_600'    => array('9.99', 600,'USD'),
		'btyhngb_900'    => array('14.99', 900, 'USD'),
		'hdfvsz_1500'   => array('24.99', 1500, 'USD'),
		'brtyesgvv_3000'   => array('49.99', 3000, 'USD'),
		'yhrebbgf_6000'   => array('99.99', 6000, 'USD'),
		'ngdsf'   => array('5.99', 360, 'USD'),
		'cfhudw_60'     => array('0.99', 60	, 'USD'),
		'vfevre_300'    => array('4.99', 300,'USD'),
		'vrgbht_600'    => array('9.99', 600,'USD'),
		'nthyn_900'    => array('14.99', 900, 'USD'),
		'dsgvrtfb_1500'   => array('24.99', 1500, 'USD'),
		'sgvfs_3000'   => array('49.99', 3000, 'USD'),
		'rther_6000'   => array('99.99', 6000, 'USD'),
		'wbvg'   => array('5.99', 360, 'USD'),
		'nmchongzhi_60'     => array('0.99', 60	, 'USD'),
		'nmchongzhi_300'    => array('4.99', 300,'USD'),
		'nmchongzhi_600'    => array('9.99', 600,'USD'),
		'nmchongzhi_900'    => array('14.99', 900, 'USD'),
		'nmchongzhi_1500'   => array('24.99', 1500, 'USD'),
		'nmchongzhi_3000'   => array('49.99', 3000, 'USD'),
		'nmchongzhi_6000'   => array('99.99', 6000, 'USD'),
		'nmchongzhi_card'   => array('5.99', 360, 'USD'),
		'yuenanpay_6'     => array('0.99', 90	, 'USD'),
		'yuenanpay_12'    => array('1.99', 180,'USD'),
		'yuenanpay_18'    => array('3.99', 360,'USD'),
		'yuenanpay_30'    => array('4.99', 450, 'USD'),
		'yuenanpay_68'   => array('9.99', 910, 'USD'),
		'yuenanpay_138'   => array('19.99', 1820, 'USD'),
		'yuenanpay_348'   => array('49.99', 4540, 'USD'),
		'yuenanpay_698'   => array('99.99', 9090, 'USD'),
		'vszhandou_6'     => array('0.99', 90	, 'USD'),
		'vszhandou_12'    => array('1.99', 180,'USD'),
		'vszhandou_18'    => array('3.99', 360,'USD'),
		'vszhandou_30'    => array('4.99', 450, 'USD'),
		'vszhandou_68'   => array('9.99', 910, 'USD'),
		'vszhandou_138'   => array('19.99', 1820, 'USD'),
		'vszhandou_348'   => array('49.99', 4540, 'USD'),
		'vszhandou_698'   => array('99.99', 9090, 'USD'),

		'skypay_60'     => array('0.99', 60	, 'USD'),
		'skypay_300'    => array('4.99', 300,'USD'),
		'skypay_600'    => array('9.99', 600,'USD'),
		'skypay_900'    => array('14.99', 900, 'USD'),
		'skypay_1500'   => array('24.99', 1500, 'USD'),
		'skypay_3000'   => array('49.99', 3000, 'USD'),
		'skypay_6000'   => array('99.99', 6000, 'USD'),
		'skypay_card'   => array('5.99', 360, 'USD'),
		
		'ksmdgsepay_75'      => array('75','80', 'RUB'), //
		'ksmdgsepay_379'      => array('379','390', 'RUB'), //
		'ksmdgsepay_1490'     => array('1490', '1690', 'RUB'),
		'ksmdgsepay_3790'     => array('3790', '4290', 'RUB'),
		'ksmdgsepay_7490'    => array('7490', '8500', 'RUB'),
		'ksmdgsepay_card'    => array('299', '200', 'RUB'),
		
		'kshujd889_75'      => array('75','80', 'RUB'), //
		'kshujd889_379'      => array('379','390', 'RUB'), //
		'kshujd889_1490'     => array('1490', '1690', 'RUB'),
		'kshujd889_3790'     => array('3790', '4290', 'RUB'),
		'kshujd889_7490'    => array('7490', '8500', 'RUB'),
		'kshujd889_card'    => array('299', '200', 'RUB'),
		
		'arpays_60'     => array('0.99', 60	, 'USD'),
		'arpays_280'    => array('4.99', 280,'USD'),
		'arpays_600'    => array('9.99', 600,'USD'),
		'arpays_870'    => array('14.99', 870, 'USD'),
		'arpays_1450'   => array('24.99', 1450, 'USD'),
		'arpays_3000'   => array('49.99', 3000, 'USD'),
		'arpays_5940'   => array('99.99', 5940, 'USD'),
		'arpays_card'   => array('5.99', 360, 'USD'),
);
