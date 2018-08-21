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
	        </div>
	        <div class="panel-footer">
	        	<?php echo lab4_entry_meta(); ?>
	        </div>
	    </div>
	</section>
    
</div>
