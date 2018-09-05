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
			'name'	=> __('Bottom Sidebar', 'lab4'),
			'id'	=> 'bottom-sidebar',
			'class'	=> 'bottom-sidebar',
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

/**
 *
 * Doan mo ta ngan trong bai viet
 *
 **/
if(!function_exists('lab4_excerpt')){
    function lab4_excerpt($class = 'entry-summary'){
        $class = esc_attr( $class );	// Xoa bo cac thuoc tinh html truyen vao
        // Doan hien thi noi dung rut gon
        // 1 has_excerpt : post hien tai co doan noi dung rut gon k
        // 2 is_search : co phai doan noi dung tim kiem k
		if ( has_excerpt() || is_search() ) :
		?>
			<div class="<?php echo $class; ?>">
				<?php the_excerpt(); ?>
			</div><!-- .<?php echo $class; ?> -->
		<?php
		endif;
    }

}

/**
 *
 * Thumpnail cho 1 so trang dac biet 
 *
 **/
if(!function_exists('lab4_post_thumbnail')){
    function lab4_post_thumbnail(){
    	// !has_post_thumbnail() : Neu khong co anh thumbnail 
        if ( is_attachment() || ! has_post_thumbnail() ) {
			return;
		}

		if ( is_singular() ) :
			?>
			<div class="post-thumbnail">
				<?php the_post_thumbnail(); ?>
			</div><!-- .post-thumbnail -->

			<?php else : ?>

			<a class="post-thumbnail" href="<?php the_permalink(); ?>" aria-hidden="true">
				<?php the_post_thumbnail( 'post-thumbnail', array( 'alt' => the_title_attribute( 'echo=0' ) ) ); ?>
			</a>

			<?php
		endif; // End is_singular()
    }

}

/**
 *
 * Thong tin mo ta va tac gia cua post 
 *
 **/
if(!function_exists('lab4_entry_meta')){
    function lab4_entry_meta(){
    	// Co 5 loai tra ve cua get_post_type() : post | page | attachment | revision | nav_menu_item
    	if ( 'post' === get_post_type() ) {
			$author_avatar_size = apply_filters( 'twentysixteen_author_avatar_size', 49 );
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

/**
 * Tag cua bai viet
 **/
if (!function_exists('lab4_item_tag')) {
	function lab4_item_tag(){
		if (is_single()) {
			if (has_tag()) {
				the_tags( '', ', ','' );
			}
		}
	}
}

/**
 * Theme option redux demo
 **/
if (!function_exists('lab4_redux_demo')) {
	function lab4_redux_demo($field){
		global $redux_demo;
		return $redux_demo[$field];
	}
}

/**
 * Action hook demo
 **/
if (!function_exists('lab4_action_hook_demo')) {
	function lab4_action_hook_demo(){
		echo 'hello';
	}
	add_action( 'wp_head', 'lab4_action_hook_demo' );
}

/**
 * Theme option redux demo
 **/
if (!function_exists('lab4_hook_demo_pre_get_posts')) {
	function lab4_hook_demo_pre_get_posts($a){
		dd($a);
		// $query->set( 'cat', '123' );
	}
	add_action( 'pre_get_posts', 'lab4_hook_demo_pre_get_posts' );
}

/*
 * Action hook test 1
 **/
if (!function_exists('lab4_add_action')) {
	function lab4_add_action(){
		echo 'hello';
	}
	add_action('lab4_do_action', 'lab4_add_action');
}

/**
 * Action hook test 2
 **/
if (!function_exists('lab4_do_function_have_parameter')) {
	function lab4_do_function_have_parameter($params){

		echo '<br>do function prm-';
		var_dump($params);
		do_action('lab4_do_function_have_parameter', $params);

	}
	
}

if (!function_exists('lab4_add_function_have_parameter')) {
	function lab4_function_have_parameter($param2){

		echo '<br>add function prm-';
		var_dump($param2[0]);

	}
	add_action('lab4_do_function_have_parameter', 'lab4_function_have_parameter');
}



