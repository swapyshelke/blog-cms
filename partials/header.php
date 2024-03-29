<?php

require 'config/database.php';

if(isset($_SESSION['user-id'])) {
  $id = filter_var($_SESSION['user-id'], FILTER_SANITIZE_NUMBER_INT);
  $query = "SELECT avatar FROM users WHERE id=$id";
  $result = mysqli_query($connection, $query);
  $avatar = mysqli_fetch_assoc($result);
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Modern Blogging Web Application</title>

    <!-- ============== CSS Linked ==============  -->
    <link rel="stylesheet" href="./CSS/style.css" />
        
    <!-- ============== Tailwind CSS CDN ==============  -->
    <!-- <script src="https://cdn.tailwindcss.com"></script> -->


    <!-- ============== ICONSSCOUT CDN ==============  -->
    <link
      rel="stylesheet"
      href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"
    />
  </head>
  <body>
    <nav>
      <div class="container nav__container">
        <a href="index.php" class="nav__logo">Swapnil</a>
        <ul class="nav__items">
          <li><a href="blog.php">Blog</a></li>
          <li><a href="about.php">About</a></li>
          <li><a href="services.php">Services</a></li>
          <li><a href="contact.php">Contact</a></li>
          <!--  -->
          <?php 
          if(isset($_SESSION['user-id'])): 
          ?>
            <!-- if user-d is set that means user is logged-in  -->

               <li class="nav__profile">
               <div class="avatar">
               <img src="./images/<?php echo $avatar['avatar'] ?>">
               </div>
               <ul>
                 <li><a href="admin/index.php">Dashboard</a></li>
                 <li><a href="signout.php">Logout</a></li>
               </ul>
               </li>
               
               <?php                else :                 ?>

               <li><a href="signin.php">Sign In</a></li>

               <?php                 endif                ?>
        </ul>

        <button class="" id="open__nav-btn">
          <i class="uil uil-bars"></i>
        </button>
        <button class="" id="close__nav-btn">
          <i class="uil uil-multiply"></i>
        </button>
      </div>
    </nav>

    <!-- ================ End of Nav  ================ -->
