<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'海牛管理系统',
	// preloading 'log' component
	'preload'=>array('log'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',	
	),
	'defaultController'=>'index/index',
	'modules'=>array(
		// uncomment the following to enable the Gii tool
		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'654321',
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
		),

	),
	// application components
	'components'=>array(
		'user'=>array(
			// enable cookie-based authentication
			    'allowAutoLogin'=>true,
				'loginUrl'=>array('public/login'),
		),
		'cache'=>array(
				'class'=>'system.caching.CFileCache',
		),
		// uncomment the following to enable URLs in path-format
		
		'urlManager'=>array(
			'urlFormat'=>'path',
			'showScriptName'=>false,
			'urlSuffix'=>'',
			'rules'=>array(
				'appdownload' 	=>array('index/appdownload'),
				'data'    				=>array('article/list/id/16'),
				'notice' 				=>array('article/list/id/17'),
				'strategy' 			=>array('article/list/id/18'),
				'atlas' 					=>array('article/list/id/19'),
				
				
				
			    'article/list/<id:\d+>'  =>array('article/list'),
			    'article/<id:\d+>'=>array('article/detail'),
			     
		    ),
		),
		
		/* 'db'=>array(
			'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
		), */
		// uncomment the following to use a MySQL database
		'db'=>array(
		    'class'=>'CDbConnection',
			'connectionString' => 'mysql:host=127.0.0.1;dbname=u591_hj',
			'emulatePrepare' => true,
			'tablePrefix'=>'web_',
			'username' => 'root',
			'password' => 'u591,hainiu*',
			'charset' => 'utf8',
		),

		'errorHandler'=>array(
			// use 'site/error' action to display errors
			'errorAction'=>'site/error',
		),
		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning',
				),
				// uncomment the following to show log messages on web pages
				
				/*array(
					'class'=>'CWebLogRoute',
					'levels' =>'trace',
					'categories' => 'system.db*',
				),*/
				
			),
		),
	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in contact page
		'adminEmail'=>'webmaster@example.com',
		'uploadPath'=>'/Upload',
	),
);
