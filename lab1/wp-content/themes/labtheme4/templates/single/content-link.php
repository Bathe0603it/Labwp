<?php
/**
 *
 * The template part for displaying content
 *
 */
?>

<div class="col-sm-4">
	<section id="post-<?php the_ID(); ?>" <?php post_class() ?>>
		<div class="panel panel-primary">
	        <div class="panel-heading">
	        	<a href="<?php echo esc_url( get_permalink() ); ?>">
	        		<?php echo the_title(); ?>
	        	</a>
	        </div>
	        <div class="panel-body">
	        	<?php echo lab4_post_thumbnail(); ?>
	        	<?php echo lab4_excerpt(); ?>
	        	<?php
					$link_cst_by_user = get_post_meta( get_the_ID(), 'format_link_url_lab1', true ); // Them 1 thuoc tinh trong admin cua bai viet
					$description_cst_by_user = get_post_meta( get_the_ID(), 'format_description_url_lab1', true ); // Tuong tu thuoc tinh tren
					if (is_single()) {
						echo '<h1><a href="'.$link_cst_by_user.'">'.get_the_title().'</a></h1>';
						echo '<div class="description">Phan noi dung add in admin: '.$description_cst_by_user.'</div>';
					}
					else{
						echo '<h2><a href="'.$link_cst_by_user.'">'.get_the_title().'</a></h2>';
					}
				?>
	        </div>
	        <div class="panel-footer">
	        	<?php echo lab4_entry_meta(); ?>
	        	<?php echo lab4_item_tag(); ?>
	        </div>
	    </div>
	</section>
    
</div>
