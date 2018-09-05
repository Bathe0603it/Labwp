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
                    <?php get_template_part( 'content-none' ) ?>
                <?php endif ?>
            </div>
        </div>
    </div>
</div>
<div class="alert alert-success text-center">
    TEST
</div>
<div class="container">
    <section class="jumbotron">
        <?php
            $args = array(
                'meta_key' => 'lab4_second',
                'meta_value' => 'two'
            );
            $lab4_query = new WP_Query($args);  
            
            dd($lab4_query->posts, 1);
             
        ?>
    </section>
</div>
<br>
<br><br>-
<?php
    get_footer(); 
?>