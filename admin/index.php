<?php  
 include 'partials/header.php';

 // fetch current users posts from database
$current_user_id= $_SESSION['user-id'];
$query = "SELECT id, title, category_id FROM posts WHERE author_id=$current_user_id ORDER BY id DESC";
$posts = mysqli_query($connection, $query);
// $posts = mysqli_query($connection, $query);

?>

    <div class="dashboard">


    <?php if(isset($_SESSION['add-post-success'])):  // shows if add post is successful
            ?>
             <div class="alert__message success container">
              <p>
                <?= $_SESSION['add-post-success'];
                unset($_SESSION['add-post-success']);
                ?>
              </p>
             </div>

    <?php elseif(isset($_SESSION['edit-post-success'])):  // shows if edit post is successful
            ?>
             <div class="alert__message success container">
              <p>
                <?= $_SESSION['edit-post-success'];
                unset($_SESSION['edit-post-success']);
                ?>
              </p>
             </div>

    <?php elseif(isset($_SESSION['edit-post'])):  // shows if edit post was not successful
            ?>
             <div class="alert__message error container">
              <p>
                <?= $_SESSION['edit-post'];
                unset($_SESSION['edit-post']);
                ?>
              </p>
             </div>

    <?php elseif(isset($_SESSION['delete-post-success'])):  // shows if delete post is successful
            ?>
             <div class="alert__message success container">
              <p>
                <?= $_SESSION['delete-post-success'];
                unset($_SESSION['delete-post-success']);
                ?>
              </p>
             </div>

      <?php endif ?>


      <div class="container dashboard__container">
        <button id="show__sidebar-btn" class="sidebar__toggle">
          <i class="uil uil-angle-right-b">Show</i>
        </button>
        <button id="hide__sidebar-btn" class="sidebar__toggle">
          <i class="uil uil-angle-right-b">Hide</i>
        </button>
        <aside>
          <ul>
            <!-- 1 -->
            <li>
              <a href="add-post.php">
                <i>I</i>
                <h5>Add Post</h5>
              </a>
            </li>
            <!-- 2 -->
            <li>
              <a href="index.php" class="active">
                <i>I</i>
                <h5>Manage Post</h5>
              </a>
            </li>

            <!-- ========================== -->
            <?php 
            if(isset($_SESSION['user_is_admin'])): 
            ?>
            <!-- 3 -->
            <li>
              <a href="add-user.php">
                <i>I</i>
                <h5>Add User</h5>
              </a>
            </li>
            <!-- 4 -->
            <li>
              <a href="manage-users.php">
                <i>I</i>
                <h5>Manage Users</h5>
              </a>
            </li>
            <!-- 5 -->
            <li>
              <a href="add-category.php">
                <i>I</i>
                <h5>Add Category</h5>
              </a>
            </li>
            <!-- 6 -->
            <li>
              <a href="manage-categories.php">
                <i>I</i>
                <h5>Manage Category</h5>
              </a>
            </li>
            <?php 
            endif 
            ?>
          </ul>
        </aside>

        <main>
          <h2>Manage Users</h2>
          <?php if(mysqli_num_rows($posts) > 0) : ?>
          <table>
            <thead>
              <tr>
                <th>Title</th>
                <th>Category</th>
                <th>Edit</th>
                <th>Delete</th>
              </tr>
            </thead>

            <tbody>
              <?php while($post = mysqli_fetch_assoc($posts)) : ?>
                <!-- get category title of each post from categories table -->
                <?php
                  $category_id = $post['category_id'];
                  $category_query = "SELECT * FROM categories WHERE id=$category_id";
                  $category_result = mysqli_query($connection, $category_query);
                  $category = mysqli_fetch_assoc($category_result);
                ?>
              <tr>
                <td>
                  <?= $post['title']  ?>
                </td>
                <td> <?= $category['title'] ?> </td>
                <td><a href="edit-post.php?id=<?= $post['id'] ?>" class="btn sm">Edit</a></td>
                <td>
                  <a href="delete-post.php?id=<?= $post['id'] ?>" class="btn sm danger"
                    >Delete</a
                  >
                </td>
              </tr>
              <?php endwhile ?>
            </tbody>
          </table>
          <?php else : ?>
            <div class="alert__message error"><?= "No posts found" ?></div>
            <?php endif ?>
        </main>
      </div>
    </div>



<?php  
 include '../partials/footer.php';
?>