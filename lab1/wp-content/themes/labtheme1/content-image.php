<p>File : content-image.php</p>

<article id="post-<?php the_ID(); ?>" <?php post_class() ?>>
	<div class="item-thumbnail">
		<?php
			lab1_thumbnail('large'); 
		?>
	</div>
	<div class="item-header">
		<?php
			lab1_item_header();
		?>
		<!-- Kiểm tra số ảnh trong 1 page -->
		<?php
			$attechment = get_children( array('post_parent' => the_ID()) ); 
		?>
		<p>Co <?php echo count($attechment); ?> anh trong bai viet</p>
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