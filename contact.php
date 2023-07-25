 <head>   <link rel="stylesheet" type="text/css" href="style.css">
 </head>
<?php include("banner_nav.php"); ?>


<h2>Contact Form</h2>

<form action="action_page.php" method="POST"> 
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="Doe"><br><br>
  <label for="email">email:</label><br>
  <input type="text" id="email" name="email" value="john@mail.com"><br><br>
 <input type="submit" value="Submit">
</form>
<html>
<body>

Welcome <?php echo $_POST["fname"]; ?><br>
Your email address is: <?php echo $_POST["email"]; ?>

    
</body>
</html>
action_page.php


     <?php include ("footer.php"); ?>