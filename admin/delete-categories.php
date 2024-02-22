<?php
require 'config/database.php';
// we require database.php here

if(isset($_GET['id'])) {
    $id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);


    // update  categories id posts that belongs to this category to id of uncategorized category
    $query = "DELETE FROM categories WHERE id=$id LIMIT 1";
    $result = mysqli_query($connection, $query);
    $_SESSION['delete-category-success'] = "Category deleted successfully";
}

header('location:manage-categories.php');
die();