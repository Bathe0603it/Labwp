<p>File : content-video.php</p>

<article id="post-<?php the_ID(); ?>" <?php post_class() ?>>
	
	<div class="item-header">
		<?php
			lab1_item_header();
		?>
	</div>
	<div class="item-content">
		<?php
			lab1_item_content(); 
		?>
		<?php
			lab1_item_tag(); 
		?>
	</div>
</article>

<!-- <h1><a href="<?php echo the_permalink() ?>"><?php echo the_title(); ?></a></h1> -->