<p>File : content.php</p>

<article id="post-<?php the_ID(); ?>" <?php post_class() ?>>
	<div class="item-thumbnail">
		<?php
			lab1_thumbnail('thumbnail'); 
		?>
	</div>
	<div class="item-header">
		<?php
			$link_cst_by_user = get_post_meta( get_the_ID(), 'format_link_url_lab1', true ); // Them 1 thuoc tinh trong admin cua bai viet
			$description_cst_by_user = get_post_meta( get_the_ID(), 'format_description_url_lab1', true ); // Tuong tu thuoc tinh tren
			if (is_single()) {
				echo '<h1><a href="'.$link_cst_by_user.'">'.get_the_title().'</a></h1>';
				echo '<div class="description">Phan noi dung add in admin: '.$description_cst_by_user.'</div>';
			}
			else{
				echo '<h2><a href="'.$link_cst_by_user.'">'.the_title().'</a></h2>';
			}
		?>
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