<?php
/**
 *
 * The template part for displaying content
 *
 */
?>

<section id="post-<?php the_ID(); ?>" <?php post_class() ?>>
	<div class="panel panel-primary">
        <div class="panel-heading">
        	<a href="<?php echo esc_url( get_permalink() ); ?>">
        		<h1 class="h4"><?php echo the_title(); ?></h1>
        	</a>
        </div>
        <div class="panel-body">
        	<?php echo lab4_post_thumbnail(); ?>
        	<?php echo the_content(); ?>

        	<?php
                // Mac dinh phan trang gioi thieu bai viet cu moi
                the_post_navigation(
                    array(
                        'next_text' => '<span class="meta-nav" aria-hidden="true">' . __( 'Next', 'twentysixteen' ) . '</span> ' .
                            '<span class="screen-reader-text">' . __( 'Next post:', 'twentysixteen' ) . '</span> ' .
                            '<span class="post-title">%title</span>',
                        'prev_text' => '<span class="meta-nav" aria-hidden="true">' . __( 'Previous', 'twentysixteen' ) . '</span> ' .
                            '<span class="screen-reader-text">' . __( 'Previous post:', 'twentysixteen' ) . '</span> ' .
                            '<span class="post-title">%title</span>',
                    )
                ); 
            ?>

        	<?php
        		// Them comment
				if ( comments_open() || get_comments_number() ) {
					comments_template();
				} 
        	?>

        	<div class="alert alert-warning">
        		<?php if (is_active_sidebar( 'bottom-sidebar' )): ?>
        			<?php dynamic_sidebar( 'bottom-sidebar' ) ?>
        		<?php endif ?>
        	</div>
        	
        </div>
        <div class="panel-footer">
        	<?php echo lab4_entry_meta(); ?>
        	<?php echo lab4_item_tag(); ?>
        </div>
    </div>
</section>
