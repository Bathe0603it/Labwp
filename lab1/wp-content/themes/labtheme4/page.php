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
                <?php if (have_posts()): ?>
                    <?php while (have_posts()): ?>
                        <?php the_post(); ?>
                        <!-- default -->

                        <?php
                            get_template_part( 'templates/page/content', 'page' ); 
                        ?>

                    <?php endwhile;?>
                <?php else: ?>
                    <?php get_template_part( 'content-none' ) ?>
                <?php endif ?>
            </div>
        </div>
    </div>
</div>
<br>
<br><br>-
<?php
    get_footer(); 
?>