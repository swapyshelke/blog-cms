<?php

include ('partials/header.php');

// fetch post from database based on id
if(isset($_GET['id'])){
  $id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);
  $query = "SELECT * FROM posts WHERE id=$id";
  $result = mysqli_query($connection, $query);
  $post = mysqli_fetch_assoc($result);
} else {
  header('location:blog.php');
  die();
}

//  aadded by me
  // fetch featured post from database
  $featured_query = "SELECT * FROM posts WHERE is_featured = 1";
  $featured_result = mysqli_query($connection, $featured_query);
  $featured = mysqli_fetch_assoc($featured_result);
// till here
?>

<section class="singlepost">
      <div class="container singlepost__container">
      <div class="singlepost__info">
          <h2><?= $post['title'] ?></h2>
        </div>
        <div class="post__author">
            <?php
              // fetch author from users table using author_id of post
              $author_id = $post['author_id'];
              $author_query = "SELECT * FROM users WHERE id = $author_id";
              $author_result = mysqli_query($connection, $author_query);
              $author = mysqli_fetch_assoc($author_result);
              // $author_name = $author['username'];
            ?>
              <div class="post__author-avatar">
                <img src="./images/<?= $author['avatar'] ?>" alt="" />
              </div>

              <div class="post__author-info">
              <h5>By:  <?=  "{$author['username'] } {$author['lastname']}" ?> </h5>
                <small> <?= date("M d, Y - H:i" ,  strtotime($post['date_time'])); ?></small>
              </div>
            </div>

        <div class="singlepost__thumbnail">
          <img src="./images/<?= $post['thumbnail'] ?>" alt="" />
        </div>

     

    <p><?= $post['body'] ?></p>
      
      </div>
    </section>

    <!-- ================ End of Single post  ================ -->

    <?php

include ('partials/footer.php');

?>