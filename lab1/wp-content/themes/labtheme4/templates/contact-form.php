<?php
	/*
	* Template Name: Form liên hệ
	*/ 
?>
<?php
    get_header(); 
?>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <?php
                get_sidebar(); 
            ?>
        </div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-12">
                	<?php if (have_posts()): ?>
                		<?php the_post(); ?>
	                	<div class="panel panel-success">
					        <div class="panel-heading">
					        	<a href="<?php echo esc_url( get_permalink() ); ?>">
					        		<h1 class="h4"><?php echo the_title(); ?></h1>
					        	</a>
					        </div>
					        <div class="panel-body">
					        	<?php echo the_content() ?>
					        	<div class="contact-form">
					<?php echo do_shortcode( '[contact-form-7 id="83" title="Contact form 1"]' ) ?>
				</div>
					        </div>
					    </div>
				    <?php endif ?>
                </div>
            </div>
        </div>
    </div>
</div>
<br>
<br><br>-
<?php
    get_footer(); 
?>