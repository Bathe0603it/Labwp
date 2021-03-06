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
                    <header class="page-header">
                        <?php if ( have_posts() ) : ?>
                            <h1 class="page-title"><?php printf( __( 'Search Results for: %s', 'twentyseventeen' ), '<span>' . get_search_query() . '</span>' ); ?></h1>
                        <?php else : ?>
                            <h1 class="page-title"><?php _e( 'Nothing Found', 'twentyseventeen' ); ?></h1>
                        <?php endif; ?>
                    </header><!-- .page-header -->
                    <?php while (have_posts()): ?>
                        <?php the_post(); ?>
                        <!-- default -->

                        <?php
                            get_template_part( 'templates/content', get_post_format() ); 
                        ?>

                    <?php endwhile;?>
                    <?php 
                        $params = array(
                            'prev_text' => '««',    // text phan trang
                            'next_text' => '»»',    // text phan trang
                            'type'      => 'list',  // kieu ul li
                            'format'    => '?page=%#%', // Dinh dang lai url kieu ?page
                            'show_all'           => false,
                            'mid_size'  => 2,   // so luong trang 2 ben
                            'end_size'  => 1,   // so luong page nam cuoi cung cua phan trang page
                        );
                        // echo paginate_links( $params );  -- Phan trang su dung wp < 4.1
                        // posts_nav_link(  );  // -- Phan trang su dung wp phan trang nhanh > 4.1
                        // the_posts_pagination(  );    // -- Phan trang manh me cua wp

                        // next_posts_link();
                        the_posts_pagination();
                        // dd($wp_query->max_num_pages);
                    ?>
                <?php else: ?>
                    <?php get_template_part('templates/content', 'none' ) ?>
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