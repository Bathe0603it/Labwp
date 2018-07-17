<p>Tap tin tac gia templates : author-bio.php</p>
<div class="author-box">
	<p>Thong tin tac gia: </p>
	<section class="avatar-author">
		<?php get_avatar(get_the_author_meta( 'ID' )) ?>
	</section>
	<section class="link-auth">
		<?php echo get_author_posts_url( get_the_author_meta( 'ID' ) ) ?>
	</section>
	<section>
		<p><i>Thong tin mo ta tac gia</i></p>
		<?php echo get_the_author_meta('description'); ?>
	</section>
	<section>
		<p><i>Name tac gia</i></p>
		<?php echo get_the_author_meta( 'display_name' ) ?>
	</section>
</div>