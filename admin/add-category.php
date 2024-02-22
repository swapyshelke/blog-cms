<?php  
// include "./partials/header.php";
 include 'partials/header.php';

 // get back form data if invalid
 $title = $_SESSION['add-category-data']['title'] ?? null;
 $description = $_SESSION['add-category-data']['description'] ?? null;

 unset($_SESSION['add-category-data']);
?>

    <section class="form__section">
      <div class="container form__section-container">
        <h2>Add Category</h2>
        <?php if(isset($_SESSION['add-category'])): ?>
          <div class="alert__message error">
          <p>
            <?= $_SESSION['add-category'];
              unset($_SESSION['add-category']) ?>
          </p>
        </div>
          <?php endif ?>
        <form action="add-category-logic.php" method="POST">
          <input type="text" value="<?= $title ?>" name="title" placeholder="Title" />
          <textarea
          name="description"
          value="<?= $description ?>"
            cols="30"
            rows="4"
            placeholder="Description....."
          ></textarea>

          <button type="submit" name="submit" class="btn">Add category</button>

          <!--
             <div class="form__control">
            <label for="avatar">
              <input type="file" id="avatar" />
            </label>
          </div> 
          <button class="btn" type="submit">Sign In</button>
        
          <small>
            Don't have an account? <a href="signin.php">Sign In</a>
          </small>
          -->
        </form>
      </div>
    </section>
  </body>
</html>


<?php  
 include '../partials/footer.php';
?>