<?php
/*
* Khai bao 1 so hang du lieu can thiet vi se duoc goi tai cac file khac
* @THEME_URL : Tra ve duong dan or thu muc chua theme
* @CORE : Lay duong dan cua thu muc core
*/
define('THEME_URL', get_template_directory_uri());	// Ham tra ve string thu muc template
define('CORE', THEME_URL.'/core');

/*
* Nhung file core/init.php
*/
require_once(CORE.'/init.php');

// Thiet lap chieu rong noi dung
if (!isset($content_width)) {
	$content_width = 620;
}

/*
* Khai bao nhung chuc nang cua theme - don gian chi la goi ham ra thoi
*/
if (function_exists('lab1_theme_setup')) {
	
}
