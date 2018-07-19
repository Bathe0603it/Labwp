Lam nhung trang khong co sidebar
<?php
	/*
		Template Name: Full-width
	*/ 
?>
<?php
	get_header();
?>

<div class="content">
	<div class="full-width">
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
	</div>
</div>


<?php
	get_footer(); 
?>