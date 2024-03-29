<?php  
 include 'partials/header.php';

 // fetch categories from database
 $query = "SELECT * FROM categories ORDER BY  title";
 $categories = mysqli_query($connection, $query);
?>


    <div class="dashboard">
      <?php if(isset($_SESSION['add-user-success'])) : ?>

        <!--  -->

        <div class="alert__message error container">
              <p>
                <?= $_SESSION['add-category'];
                unset($_SESSION['add-category']);
                ?>
              </p>
            </div>

            <!--  -->
          <div class="alert__message success container">
            <p>
              <?= $_SESSION['add-user-success'];
              unset($_SESSION['add-user-success']);
              ?>_
            </p>
          </div>

          <?php elseif(isset($_SESSION['edit-category'])):  // shows if edit category was NOT success
            ?>
             <div class="alert__message error container">
              <p>
                <?= $_SESSION['edit-category'];
                unset($_SESSION['edit-category']);
                ?>
              </p>
             </div>

          <?php elseif(isset($_SESSION['edit-category-success'])):  // shows if edit category was success
            ?>
             <div class="alert__message success container">
              <p>
                <?= $_SESSION['edit-category-success'];
                unset($_SESSION['edit-category-success']);
                ?>
              </p>
             </div>

          <?php elseif(isset($_SESSION['delete-category-success'])):  // shows if category is delete
            ?>
             <div class="alert__message error container">
              <p>
                <?= $_SESSION['delete-category-success'];
                unset($_SESSION['delete-category-success']);
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
              <a href="index.php">
                <i>I</i>
                <h5>Manage Post</h5>
              </a>
            </li>

            <?php if(isset($_SESSION['user_is_admin'])): ?>
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
              <a href="manage-categories.php" class="active">
                <i>I</i>
                <h5>Manage Category</h5>
              </a>
            </li>

            <?php endif ?>
          </ul>
        </aside>

        <main>
          <h2>Manage Categories</h2>
          <?php if(mysqli_num_rows($categories) > 0): ?>
          <table>
            <thead>
              <tr>
                <th>Title</th>
                <th>Edit</th>
                <th>Delete</th>
              </tr>
            </thead>

            <tbody>
              <?php while($category = mysqli_fetch_assoc($categories)) : ?>
              <tr>
                <td><?= $category['title'] ?></td>
                <td><a href="edit-category.php?id=<?= $category['id'] ?>" class="btn sm">Edit</a></td>
                <td>
                  <a href="delete-categories.php?id=<?= $category['id'] ?>" class="btn sm danger"
                    >Delete</a
                  >
                </td>
              </tr>
             <?php endwhile ?> 
            </tbody>
          </table>
          <?php else: ?>
              <div class="alert__message error"><?= "No users found" ?></div>
          <?php endif ?>
        </main>
      </div>
    </div>


<?php  
 include '../partials/footer.php';
?>

</body>
</html>


