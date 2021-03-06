<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header class="entry-header">
		<?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>
	</header><!-- .entry-header -->
	<div class="entry-content jumbotron">
		<?php
			the_content();

			wp_link_pages(
				array(
					'before' => '<div class="page-links">' . __( 'Pages:', 'twentyseventeen' ),
					'after'  => '</div>',
				)
			);

		?>
	</div><!-- .entry-content -->
	<div class="alert alert-warning">
		<?php
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif; 
		?>
	</div>
	<section>
		<!-- include file content-bottom -->
		<?php get_sidebar( 'content-bottom' ); ?>
	</section>
</article><!-- #post-## -->
