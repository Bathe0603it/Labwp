<?php
	$srcImg = '';
	if (lab4_redux_demo('logo-on')) {
	 	$arrSrcImg = lab4_redux_demo('logo-image');
	 	$srcImg = $arrSrcImg['url'];
 	} 
?>
<div class="well">
    <p><a href="#">My Profile</a></p>
    <img src="<?php echo $srcImg; ?>" class="img-circle" height="65" width="65" alt="Avatar">
</div>
<div class="well">
    <?php if (is_active_sidebar( 'main-sidebar' )): ?>
        <?php dynamic_sidebar( 'main-sidebar' ); ?>
    <?php endif ?>
</div>