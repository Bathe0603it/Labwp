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

/*
@ Nhung file core/init.php
*/
require_once(CORE.'/init.php');

// Thiet lap chieu rong noi dung
if (!isset($content_width)) {
	$content_width = 620; // Thiet lap noi dung bang bien content_width globals
}

/*
* Khai bao nhung chuc nang cua theme - don gian chi la goi ham ra thoi
*/
if (!function_exists('lab3_theme_setup')) {
	function lab3_theme_setup(){

		// Khai bao Textdomain = duong dan thuc muc language_folder
		$language_folder 	= THEME_URL.'/language';	// Duong dan thuc muc language
		load_theme_textdomain( 'lab3', $language_folder );

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
			__('Primary menu', 'lab3') 
		);
		register_nav_menu( 
			'bottom-menu', 
			__('Bottom menu', 'lab3') 
		);

		// Tao sidebar - tao 2 sidebar
		$sidebar1 	= array(
			'name'	=> __('Main Sidebar', 'lab3'),
			'id'	=> 'main-sidebar',
			'class'	=> 'main-sidebar',
			'before_widget'	=> '<li>',
			'after_widget'	=> '</li>',
			'before_title'	=> '<h3 class="sidebar">',
			'after_title'	=> '</h3>',
		);
		$sidebar2 	= array(
			'name'	=> __('Extend Sidebar', 'lab3'),
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
	add_action( 'init', 'lab3_theme_setup' ); // thuc thi 1 ham sau khi thuc thi ham init duoc load(action hook)
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

if(!function_exists('lab3_menu')){
    function lab3_menu($param = array()){
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

if (!function_exists('lab3_thumbnail')) {
	function lab3_thumbnail($size){
		if (!is_single() and has_post_thumbnail() || has_post_format( 'image' )) {
			echo '<div>
			'.the_post_thumbnail($size).'
			</div>';
		}
	}
}

if (!function_exists('lab3_item_header')) {
	function lab3_item_header(){
		if (is_single()) {
			echo '<h1><a href="'.get_the_permalink().'" title="'.get_the_title().'">'.get_the_title().'</a></h1>';
		}
		else{
			echo '<h2><a href="'.get_the_permalink().'" title="'.get_the_title().'">'.get_the_title().'</a></h2>';
		}
	}
}

if (!function_exists('lab3_item_meta')) {
	function lab3_item_meta(){
		if (!is_page()) {
			echo '<section class="meta-post">
			'.
			get_the_author().
			get_the_date().
			get_the_category_list(',')
			.'
			</section>';
			echo '<section>'.
			comments_popup_link( 'leave a comment', 'one comment', '% comment', 'read_all_comment' )
			.'</section>';
		}
	}
}

if (!function_exists('lab3_item_content')) {
	function lab3_item_content(){
		if (!is_single()) {
			the_excerpt();	// Hien thi noi dung rut gon
		}
		else{
			the_content();	// Hien thi full noi dung
		}
	}
}

/** Xu ly filter_hook voi doan rut gon noi dung **/
if (!function_exists('lab3_readmore')) {
	function lab3_readmore(){
		return '<a class="read-more" href="'.get_permalink(get_the_ID()).'">[...'.__('read more', 'lab3').']</a>';
	}
	add_filter( 'excerpt_more', 'lab3_readmore' );
}

if (!function_exists('lab3_item_tag')) {
	function lab3_item_tag(){
		if (is_single()) {
			if (has_tag()) {
				the_tags( '', ', ','' );
			}
			
		}
	}
}
