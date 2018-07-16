<!DOCTYPE html>
<html <?php language_attributes() ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ) ?>">
	<link rel="profile" href="http://gmgp.org/xfn/11">
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<!-- <title></title> - Title nay bo vi da them trong theme roi-->
	<?php wp_head(); ?>
</head>
<body <?php body_class() ?>>
	<div id="container">
		<div class="logo">
			<?php
				printf('<h1><a class="" href="%1$s" title="%2$s">%3$s</a></h1>', get_bloginfo( 'url' ), get_bloginfo('description'), get_bloginfo( 'name' )); 
			?>
		</div>
		<!-- menu position -->
		<div>
			<?php
				// get menu for theme - menu1
				lab3_menu(
					array(
						'location'	=> 'primary-menu',
						'container'		=> 'nav'
					)
				);
			?>
			
		</div>
		