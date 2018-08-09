<?php
/**
 * @package Hello_Dolly
 * @version 1.6
 */
/*
Plugin Name: Xem tuoi vo chong
Plugin URI: http://wordpress.org/plugins/hello-dolly/
Description: Mo ta ngan.
Author: Ten tac gia
Version: 1.6
*/
?>

<?php
	
		function xem_tuoi_vo_chong(){
			global $wpdb;
			require_once('view/index.php');
			require_once('lib/demo.php');
			$clsDemo = new demo();
			if ($_POST) {
				$phone = $_POST['phone'];
				$resultLib = $clsDemo->get_options();
				var_dump($resultLib);
			}
		}

		function submitForm(){
			ob_start();
			xem_tuoi_vo_chong();	// Tra ve ham co view hien tai
			return ob_get_clean();
		}

		add_shortcode( 'xtvc', 'submitForm' );
	
?>