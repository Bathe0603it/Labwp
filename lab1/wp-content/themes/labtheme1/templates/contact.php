<?php
	/*
		Template Name: Contact
	*/ 
?>
Là 1 trong những tập tin trong template vào trang đơn của trang quản trị sẽ thấy có phần chọn để phần xử lý vào trang này vs phần comment trên là phần bắt buộc - Như route của FW
<p>đây là 1 trang đơn (tuong tu nhu post) : page.php</p>
<?php
	get_header();
?>

<!-- cach 1 de hien thi -->
<div class="content">
	<h4>Address : 275 Nguyen Trai street - Ha Noi</h4>
	<div class="main-content">
		<?php if (have_posts()): ?>
			<?php the_post(); ?>
			<?php the_title() ?>
			<?php the_content(); ?>
		<?php endif ?>
	</div>
	<div class="contact-form">
		<?php echo do_shortcode( '[contact-form-7 id="83" title="Contact form 1"]' ) ?>
	</div>
	<div>
		Ket thuc form
	</div>
</div>


<!-- cach 2 de hien thi -->

<?php
	get_sidebar(); 
?>
<?php
	get_footer(); 
?>

