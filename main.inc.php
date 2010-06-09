<?php
/*
Plugin Name: rightClick
Version: 2.1.a
Description: rightClick deactivates the context menu on websized pictures and more. 
Plugin URI: http://piwigo.org/ext/extension_view.php?eid=401
Author: VDigital
Author URI: http://piwigo.org/
*/

if (!defined('PHPWG_ROOT_PATH')) die('Hacking attempt!');
define('RIGHTCK_DIR' , basename(dirname(__FILE__)));
define('RIGHTCK_PATH' , PHPWG_PLUGINS_PATH . RIGHTCK_DIR . '/');
define('RIGHTCK_VER' , '2.1.a');
include_once( RIGHTCK_PATH . 'rightClick_protect.php');
?>