<!DOCTYPE html>
<html <?php language_attributes() ?>>
    <head>
        <meta charset="<?php bloginfo( 'charset' ) ?>">
        <link rel="profile" href="http://gmgp.org/xfn/11">
        <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?php wp_head(); ?>
    </head>
    <body <?php body_class() ?>>
        <div class="jumbotron">
            <div class="container text-center">
                <h1><?php echo get_bloginfo( 'name' ) ?></h1>
                <p><?php echo get_bloginfo('description'); ?></p>
            </div>
        </div>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#">Logo</a>
                </div>
                <?php lab4_menu_bootstrap(array(
                        'location'  => 'primary-menu',
                        'container'     => 'nav'
                    )); ?>
            </div>
        </nav>
        
        