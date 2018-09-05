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
<!-- do action -->
<div class="well">
    <?php do_action('lab4_do_action'); ?>
</div>

<!-- do action 2 -->
<div class="well">
    <?php lab4_do_function_have_parameter([['id' => 1, 'name' => 'Bathepro'], ['id' => 2, 'name' => 'Batheit']]); ?>
</div>