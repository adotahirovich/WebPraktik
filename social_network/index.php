<?php
include('inc/header.php');
?>

<?php if (isset($_SESSION['email'])): ?>
    <?php create_post(); ?>

    <br>

    <form method="POST">
        <h3>Create new post</h3>
        <textarea name="post_content" cols="60" rows="10" placeholder="Post content..."></textarea>
        <input type="submit" value="Post" name="submit">
    </form>

    <div>
        <?php display_message(); ?>
    </div>

    <hr>

    <div class="posts">
        <?php fetch_all_posts(); ?>
    </div>

    <script src="js/scripts.js"></script>

<?php else: ?>

    <div class="homepage">

        <h1>Welcome to gym forum</h1>
        <p>Stavi nam ovdje template samo uzmi i id logina povezi na login isto ovako kao sto je sad ali stavi template. ma kontas ti. i da znas u futeru.php imas da mijenjas ovo copyright i to sam ti stavio.</p>

        <h2>Click <a href="login.php">here</a> to login!</h2>

        <img src="css/img/social.jpg" alt="">

    </div>

<?php endif; ?>

<?php include('inc/footer.php'); ?>