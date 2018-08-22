<div class="well">
    <p><a href="#">My Profile</a></p>
    <img src="https://www.w3schools.com/bootstrap/bird.jpg" class="img-circle" height="65" width="65" alt="Avatar">
</div>
<div class="well">
    <p><a href="#">Interests</a></p>
    <p>
        <span class="label label-default">News</span>
        <span class="label label-primary">W3Schools</span>
        <span class="label label-success">Labels</span>
        <span class="label label-info">Football</span>
        <span class="label label-warning">Gaming</span>
        <span class="label label-danger">Friends</span>
    </p>    
</div>
<div class="alert alert-success fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
    <p><strong>Ey!</strong></p>
    People are looking at your profile. Find out who.
</div>
<div class="well">
    <?php if (is_active_sidebar( 'main-sidebar' )): ?>
        <?php dynamic_sidebar( 'main-sidebar' ); ?>
    <?php endif ?>
</div>