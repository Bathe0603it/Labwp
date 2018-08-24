<?php
	// autoload plugin
	function lab4_plugin_activation(){
		// Khai bao cac plugin can tao
		$plugins = array(
			array(
				'name' => 'Redux Framework',
				'slug' => 'redux-framework',
				'required' => true, // Bat buoc cai dat khong
			),
		);

		// Thiet lap tgm
		$configs = array(
			'menu' => 'lab4_plugin_install',
			'has_notice' => true, // Hien thi thong bao cai dat khong
			'dismissed' => false, // Hien thi nut cance cho ng dung khong cai dat
			'is_automatic' => true, // Co tu dong cai dat khong
		);

		tgmpa($plugins, $configs);
	}
	add_action( 'tgmpa_register', 'lab4_plugin_activation' ) 
?>