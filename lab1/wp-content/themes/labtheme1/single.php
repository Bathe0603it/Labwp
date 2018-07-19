<p>Hien thi noi dung cua 1 bai viet (1 post) - single - single.php</p>
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

<!-- lay thong tin admin -->
<?php get_template_part( 'author-bio' ) ?>

<!-- tao 1 list comment mac dinh -->
<?php comments_template() ?>
<?php
	get_sidebar(); 
?>
<?php
	get_footer(); 
?>
