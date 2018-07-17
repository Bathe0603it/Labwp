<p>đây là 1 trang đơn (tuong tu nhu post) : page.php</p>
<?php
	get_header();
?>

<!-- cach 1 de hien thi -->
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
<?php else: ?>
	<?php get_template_part( 'content-none' ) ?>
<?php endif ?>

<!-- cach 2 de hien thi -->
<?php the_title() ?>
<?php the_content(); ?>

<?php
	get_footer(); 
?>

