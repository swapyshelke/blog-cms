<?php
require 'config/database.php';

if(isset($_POST['submit'])) {
    $author_id = $_SESSION['user-id'];
    $title = filter_var($_POST['title'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $body = filter_var($_POST['body'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $category_id = filter_var($_POST['category'], FILTER_SANITIZE_NUMBER_INT);
    // $is_featured = filter_var($_POST['is_featured'], FILTER_SANITIZE_NUMBER_INT);
    $is_featured = isset($_POST['is_featured']) ? filter_var($_POST['is_featured'], FILTER_SANITIZE_NUMBER_INT) : 0;
    $thumbnail = $_FILES['thumbnail'];

    // set is_featured to 0 if unchanged
    $is_featured = $is_featured == 1 ?: 0;

    // validate form data
    if(!$title) {
        $_SESSION['add-post'] = "Enter post title";
    } elseif (!$category_id) {
        $_SESSION['add-post'] = "Select post category";
    } elseif(!$body) {
        $_SESSION['add-post'] = "Enter post body";
    } elseif(!$thumbnail['name']) {
        $_SESSION['add-post'] = "Choose post thumbnail";
    } else{
        // work on thumbnail
        // rename the image
        $time = time(); // make each image name unique
        $thumbnail_name = $time . $thumbnail['name'];
        $thumbnail_tmp_name = $thumbnail['tmp_name'];
        $thumbnail_deatination = '../images/' . $thumbnail_name;

        // make sur file is an image
        $allowd_files = ['png', 'jpg', 'jpeg'];
        $extension = explode('.', $thumbnail_name);
        $extension = end($extension);
        if(in_array($extension, $allowd_files)) {
            // make sure image is not too big. (2 MB)
            if($thumbnail['size'] < 2_000_000) {
                // upload thumbnail
                move_uploaded_file($thumbnail_tmp_name, $thumbnail_deatination);
             } elseif 
             ($thumbnail['size'] > 2_000_000) {
                 $_SESSION['add-post'] = "File size too big. should be less than 2mb";
             }
            
            else {
                $_SESSION['add-post'] = "File size too big. should be less than 2mb";
            }
        }
    }

    // redirect back (with form data) to add-post page if there is any problem
    if(isset($_SESSION['add-post'])) {
    $_SESSION['add-post-data'] = $_POST;
    header('location:add-post.php');
    die();
}  else {
    // set is_featured if all post to 0 if is_featured fo this post is 1
    if($is_featured == 1) {
        $zero_all_is_featured_query = "UPDATE posts SET is_featured = 0";
        $zero_all_is_featured_result = mysqli_query($connection, $zero_all_is_featured_query);
    }

    // insert post into database
    $query = "INSERT INTO posts (title, body, thumbnail, category_id, author_id, is_featured) VALUES ('$title', '$body', '$thumbnail_name', '$category_id', '$author_id', '$is_featured')";
    $result = mysqli_query($connection, $query);

    if(!mysqli_errno($connection)) {
        $_SESSION['add-post-success'] = "Post added successfully";
        header('location:index.php');
        die();
    }
}
}

header('location:index.php');