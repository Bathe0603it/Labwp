<?php
	get_header(); 
?>
<p>File : page.php</p>
<p></p>
<?php if (have_posts()): ?>
	<?php
		while (have_posts()) {
			the_post();
			?>
			<?php
				get_template_part( 'content', get_post_format() ); 
			?>
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
		// echo paginate_links( $params );	-- Phan trang su dung wp < 4.1
		// posts_nav_link(  );	// -- Phan trang su dung wp phan trang nhanh > 4.1
		// the_posts_pagination(  );	// -- Phan trang manh me cua wp

		// next_posts_link();
		the_posts_pagination();
		// dd($wp_query->max_num_pages);
	?>
<?php else: ?>
	<?php get_template_part( 'content-none' ) ?>
<?php endif ?>
<?php
	get_footer(); 
?>
