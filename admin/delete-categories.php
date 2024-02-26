<?php
require 'config/database.php';
// we require database.php here

if(isset($_GET['id'])) {
    $id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);


    // for later
    // update category_id of posts that belongs to this category to id of uncaegorized category
    $update_query = "UPDATE posts SET category_id=13 WHERE category_id=$id";
    $update_result = mysqli_query($connection, $update_query);

    if(!mysqli_errno($connection)) {
        // delete category from database
        $query = "DELETE FROM categories WHERE id=$id LIMIT 1";
        $result = mysqli_query($connection, $query);
        $_SESSION['delete-category-success'] = "Category deleted successfully";
    }


}

header('location:manage-categories.php');
die();