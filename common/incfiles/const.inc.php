<?php
//****************************************************
// JTBC CMS Power by Jetiben.com
// Email: jetiben@hotmail.com
// Web: http://www.jtbc.net.cn/
//****************************************************
ob_start();
session_start();
define('ADMIN_FOLDER', 'admin');
define('APP_NAME', 'jtbc_');
define('CACHE_DIR', '_CACHE');
define('CHARSET', 'utf-8');
define('COOKIES_PATH', '/');
define('CRLF', chr(13) . chr(10));
define('GMT_PLUS', 8);
define('JTBC_CINFO', '<!--JTBC_CINFO-->');
define('NAV_SP_STR', ' &raquo; ');
define('SP_STR', ' - ');
define('SYS_NAME', 'JTBC');
define('USER_FOLDER', 'passport');
define('XML_SFX', '.jtbc');
if(!defined('E_DEPRECATED')) error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING);
else error_reporting(E_ALL ^ E_NOTICE ^ E_DEPRECATED ^ E_WARNING);
header('Content-Type: text/html; charset=' . CHARSET);
$starttime = microtime(1);
$db_host = '115.28.245.187';
$db_username = 'coolcodes';
$db_password = 'cc123456';
$db_database = 'coolcodes';
$default_language = 'chinese';
$default_template = 'tpl_default';
$default_skin = 'default';
$default_head = 'default_head';
$default_foot = 'default_foot';
//****************************************************
// JTBC CMS Power by Jetiben.com
// Email: jetiben@hotmail.com
// Web: http://www.jtbc.net.cn/
//****************************************************
?>
