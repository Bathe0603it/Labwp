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
                            get_template_part( 'content', get_post_format() ); 
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
                <div class="col-sm-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">BLACK FRIDAY DEAL</div>
                        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel panel-danger">
                        <div class="panel-heading">BLACK FRIDAY DEAL</div>
                        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel panel-success">
                        <div class="panel-heading">BLACK FRIDAY DEAL</div>
                        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                    </div>
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