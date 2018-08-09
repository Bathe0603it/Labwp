<?php
	class demo{
		function get_options(){
			global $wpdb;
			$result = $wpdb->get_row('select * from wp_options', ARRAY_A);
			return $result;
		}
	} 
?>