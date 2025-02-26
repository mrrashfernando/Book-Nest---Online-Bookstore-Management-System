<?php

include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:login.php');
};

if(isset($_GET['delete'])){
   $delete_id = $_GET['delete'];
   mysqli_query($conn, "DELETE FROM `message1` WHERE id = '$delete_id'") or die('query failed');
   header('location:admin_contacts.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>messages</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/admin_style.css">

</head>
<body>
   
<?php include 'admin_header.php'; ?>

<section class="messages">

   <h1 class="title"> messages </h1>

   <div class="box-container">
   <?php
      $select_message1 = mysqli_query($conn, "SELECT * FROM `message1`") or die('query failed');
      if(mysqli_num_rows($select_message1) > 0){
         while($fetch_message1 = mysqli_fetch_assoc($select_message1)){
      
   ?>
   <div class="box">
      <p> user id : <span><?php echo $fetch_message1['user_id']; ?></span> </p>
      <p> name : <span><?php echo $fetch_message1['name']; ?></span> </p>
      <p> number : <span><?php echo $fetch_message1['number']; ?></span> </p>
      <p> email : <span><?php echo $fetch_message1['email']; ?></span> </p>
      <p> message : <span><?php echo $fetch_message1['message']; ?></span> </p>
      <a href="admin_contacts.php?delete=<?php echo $fetch_message1['id']; ?>" onclick="return confirm('delete this message?');" class="delete-btn">delete message</a>
   </div>
   <?php
      };
   }else{
      echo '<p class="empty">you have no messages!</p>';
   }
   ?>
   </div>

</section>









<!-- custom admin js file link  -->
<script src="admin_script.js"></script>

</body>
</html>