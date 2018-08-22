<?php

if ( ! is_active_sidebar( 'bottom-sidebar' ) ) {
	return;
}

// If we get this far, we have widgets. Let's do this.
?>
<aside id="content-bottom-widgets" class="content-bottom-widgets" role="complementary">
	<?php if ( is_active_sidebar( 'bottom-sidebar' ) ) : ?>
		<div class="widget-area">
			<?php dynamic_sidebar( 'bottom-sidebar' ); ?>
		</div><!-- .widget-area -->
	<?php endif; ?>
</aside><!-- .content-bottom-widgets -->
