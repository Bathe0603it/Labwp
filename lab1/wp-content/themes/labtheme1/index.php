<?php
	get_header(); 
?>
Trang chủ nhé
<?php dd(get_post_format()); ?>
<?php if (have_posts()): ?>
	<?php
		while (have_posts()) {
			the_post();
			?>
			<h1><a href="<?php echo the_permalink() ?>"><?php echo the_title(); ?></a></h1>
			<?php 	
		} 
	?>
	<?php 
		$params = array(
			'prev_text'	=> '««',	// text phan trang
			'next_text' => '»»',	// text phan trang
			'type'		=> 'list',	// kieu ul li
			'format'	=> '?page=%#%',	// Dinh dang lai url kieu ?page
			'show_all'           => false,
			'mid_size'	=> 2,	// so luong trang 2 ben
			'end_size'	=> 1,	// so luong page nam cuoi cung cua phan trang page
		);
		echo paginate_links( $params ) 
	?>
<?php else: ?>
	<p>Not update article!</p>
<?php endif ?>
<?php
	get_footer(); 
?>
