<?php  
 include 'partials/header.php';

if(isset($_GET['id'])) {
  $id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);
  $query = "SELECT * FROM users WHERE id=$id";
  $result = mysqli_query($connection, $query);
  $user = mysqli_fetch_assoc($result);
} else {
  header('location:manage-users.php');
  die();
}

?>


    <section class="form__section">
      <div class="container form__section-container">
        <h2>Edit User</h2>
        <form action="edit-user-logic.php" method="POST" enctype="multipart/form-data">
          <input type="hidden" value="<?= $user['id'] ?>" name="id"  />
          <input type="text" value="<?= $user['firstname'] ?>" name="firstname" placeholder="first name" />
          <input type="text" value="<?= $user['lastname'] ?>" name="lastname" placeholder="last name" />
          <select name="userrole">
            <option value="0">Author</option>
            <option value="1">Admin</option>
          </select>
          <button class="btn" type="submit">Update User</button>
        </form>

        <!-- <button class="btn" type="submit">Sign In</button> -->
      </div>
    </section>
  </body>
</html>



<?php  
 include '../partials/footer.php';
?>
