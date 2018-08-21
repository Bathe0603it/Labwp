<?php
/*
* Khai bao 1 so hang du lieu can thiet vi se duoc goi tai cac file khac
* @THEME_URL : Tra ve duong dan or thu muc chua theme
* @CORE : Lay duong dan cua thu muc core
* Note : 
	_e(tuong ung voi lenh hien thi ra php)
	__(tra ve chu khong hien thi ra php)
	Co 2 ham nay va truyen them 1 tham so dang sau la 'textdomain' chi de dich tu tiengviet sang english

	Cac chuc nang cua add_theme_supposts() thi se hien thi ra admin phan sidebar de nguoi dung chon luon
*/
define('THEME_URL', get_template_directory());	// Ham tra ve string thu muc template
define('CORE', THEME_URL.'/core');
define('LIB', THEME_URL.'/lib');

/*
@ Nhung file core/init.php
*/
require_once(CORE.'/init.php');
require_once(LIB.'/class-wp-bootstrap-navwalker.php');

// Thiet lap chieu rong noi dung
if (!isset($content_width)) {
	$content_width = 620; // Thiet lap noi dung bang bien content_width globals
}

/*
* Khai bao nhung chuc nang cua theme - don gian chi la goi ham ra thoi
*/
if (!function_exists('lab4_theme_setup')) {
	function lab4_theme_setup(){

		// Khai bao Textdomain = duong dan thuc muc language_folder
		$language_folder 	= THEME_URL.'/language';	// Duong dan thuc muc language
		load_theme_textdomain( 'lab4', $language_folder );

		/* Tu dong them link RSS len <head> */
		add_theme_support( 'automatic_feed_links' );

		// Them tinh nang post anh thumbnails cho bai viet
		add_theme_support( 'post-thumbnails' );

		// Them post format - cac kieu hinh anh, vide, link ... nó chỉ để chọn trong quản trị thôi và vẫn phải viết code để nó hiển thị ra ngoài sẽ hiểu sau
		add_theme_support( 'post-formats', array(
			'images',
			'video',
			'gallery',
			'quote',
			'link',
		) );

		// Tu dong tao title khi ra ngoai page ma ta khong phai cau hinh nua - Khi ta viet code cho header.php khong can them get_title() nua <title> abc | ten website </title>
		add_theme_support( 'title-tag' );

		// them customer background kiem tra trong menu chinh ngay trong giao dien admin se co chuc nang do - can phai chon mau mac dinh
		$default_background	= array(
			'default-color' => '#fff',
		);	// Mau mac dinh
		add_theme_support( 'custom-background', $default_background );

		// Them menu va cac vi tri menu cho nguoi dung chon trong admin @$location and @$description 
		register_nav_menu( 
			'primary-menu', 
			__('Primary menu', 'lab4') 
		);
		register_nav_menu( 
			'bottom-menu', 
			__('Bottom menu', 'lab4') 
		);

		// Tao sidebar - tao 2 sidebar
		$sidebar1 	= array(
			'name'	=> __('Main Sidebar', 'lab4'),
			'id'	=> 'main-sidebar',
			'class'	=> 'main-sidebar',
			'before_widget'	=> '<li>',
			'after_widget'	=> '</li>',
			'before_title'	=> '<h3 class="sidebar">',
			'after_title'	=> '</h3>',
		);
		$sidebar2 	= array(
			'name'	=> __('Extend Sidebar', 'lab4'),
			'id'	=> 'extend-sidebar',
			'class'	=> 'extend-sidebar',
			'before_widget'	=> '<li>',
			'after_widget'	=> '</li>',
			'before_title'	=> '<h3 class="sidebar">',
			'after_title'	=> '</h3>',
		);
		
		register_sidebar( $sidebar1 );
		register_sidebar( $sidebar2 );
		

	}
	// action hook init duoc goi dau tien
	add_action( 'init', 'lab4_theme_setup' ); // thuc thi 1 ham sau khi thuc thi ham init duoc load(action hook)
}

if(!function_exists('dd')){
    function dd($input = null,$break = null){
        echo '<pre>';
        var_dump($input);
        echo '</pre>';
        if(empty($break))
        exit();
    }

}

/**
* Hien thi menu tai vi tri duoc goi 
**/
if(!function_exists('lab4_menu')){
    function lab4_menu($param = array()){
        wp_nav_menu( array(
		 	'theme_location'  => $param['location'],	// name menu theme
		 	'menu'            => '',
		 	'container'       => $param['container'],	// nav
		 	'container_class' => 'menu-'.$param['location'].'-container',	// class for nav
		 	'container_id'    => '',
		 	'menu_class'      => 'menu',	// menu class for ul
		 	'menu_id'         => 'aaaaaaaaaa',	// menu id for ul
		 	'before'          => '',
		 	'after'           => '',
		 	'link_before'     => '',
		 	'link_after'      => '',
		 	'items_wrap'      => '<ul id = "%1$s" class = "%2$s">%3$s</ul>',
		 	'depth'           => 0,
		 	'walker'          => '',
		) ); 
    }

}

if(!function_exists('lab4_menu_bootstrap')){
    function lab4_menu_bootstrap($param = array()){
        wp_nav_menu( array(
        	'menu' => $param['location'],
                'depth'             => 2,
                'container'         => 'div',
                'container_class'   => 'navbar-collapse collapse',
                'menu_class'        => 'nav navbar-nav',
                'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
			'walker' => new wp_bootstrap_navwalker(),

		 	'theme_location'  => $param['location'],	// name menu theme
		) ); 
    }

}

/**
* Nhung style.css
**/
function lab4_style(){
	/**
	Them style theo cach cu 
	// Them file style vao bo nho
	wp_register_style( 'main-style', get_template_directory_uri().'/style.css', 'all', '1.0' );
	// Goi file tu bo nho ra
	wp_enqueue_style( 'main-style' );

	// Them nhieu style chi can copy va dan them vao
	wp_register_style( 'global-style', get_template_directory_uri().'/public/css/global-style.css', 'all', '1.0' );
	// Goi file tu bo nho ra
	wp_enqueue_style( 'global-style' );
	**/

	// Add style file
	$arrStyle = array(
		'global-style' => '/public/css/global-style.css',
		'response' => '/public/css/response.css',
		'bootstrap' => '/public/plugins/bootstrap/css/bootstrap.min.css',
	);
	// Add script js file
	$arrScript = array(
		'jquery' => '/public/js/jquery-3.1.0/jquery-3.1.0.min.js',
		'bootstrap' => '/public/plugins/bootstrap/js/bootstrap.min.js',
		'functions' => '/public/js/functions.js',
	);
	foreach ($arrStyle as $key => $value) {
		wp_enqueue_style( $key, get_template_directory_uri() . $value,false,'1.1','all');
	}
	foreach ($arrScript as $key => $value) {
		wp_enqueue_script( $key, get_theme_file_uri($value) , array ( 'jquery' ), 1.1, true);
	}
	
}
add_action( 'wp_enqueue_scripts', 'lab4_style' );


