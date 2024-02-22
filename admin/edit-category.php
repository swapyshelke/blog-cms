<?php  
 include 'partials/header.php';

 if(isset($_GET['id'])) {
     $id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);

     // fetch category from database
     $query = "SELECT * FROM categories WHERE id=$id";
     $result = mysqli_query($connection, $query);
     if(mysqli_num_rows($result) == 1) {
         $category = mysqli_fetch_assoc($result);
     }
 } else {
     header('location:manage-categories.php');
     die();
 }
?>

    <section class="form__section">
      <div class="container form__section-container">
        <h2>Edit Category</h2>

        <form action="edit-category-logic.php" method="post">
          <input type="hidden" name="id" value="<?= $category['id'] ?>" placeholder="Title" />
          <input type="text" name="title" value="<?= $category['title'] ?>" placeholder="Title" />
          <textarea
            cols="30"
            rows="4"
            <?= $category['description'] ?>
            placeholder="Description....."
            name="description">
          </textarea>

          <button name="submit" class="btn">Update Category</button>
        </form>
      </div>
    </section>
  </body>
</html>


<?php  
 include '../partials/footer.php';
?>