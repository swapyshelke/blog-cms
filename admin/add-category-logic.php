<?php

require 'config/database.php';

if(isset($_POST['submit'])) {
    // get form data
    $title = filter_var($_POST['title'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $description = filter_var($_POST['description'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);

    if(!$title) {
        $_SESSION['add-category'] = 'Enter title';
        header('location:add-category.php');
    } elseif (!$description) {
        $_SESSION['add-category'] = "Enter description";
        header('location:add-category.php');
    }

    // redirect back to add category page with form data if there was invalid input
    if(isset($_SESSION['add-category'])) {
        $_SESSION['add-category-data'] = $_POST;
        header('location:admin/add-category.php');
        die();
    } else {
        // insert category into db
        $query = "INSERT INTO categories (title, description) VALUES ('$title', '$description')";
        $result = mysqli_query($connection, $query);
        if(mysqli_errno($connection)) {
            $_SESSION['add-category'] = "Couldn't add category";
            header('location:add-category.php');
            die();
        } else {
            $_SESSION['add-category-success'] = "Category $title added successfully";
            header('location:manage-categories.php');
            die();
        }
    }
}




