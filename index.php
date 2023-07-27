
<html lang="en">

<head>
 <title>Enviro Lawns - Home</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" type="text/css" href="style.css">
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
   <script src="https://kit.fontawesome.com/f743cfc9ef.js" crossorigin="anonymous"></script>
</head>

<body> 


<?php include("banner.php"); ?>




    <!-- Main content section -->
    <main>
        <div class="container">
            <section class="hero-section">
                <h2>Your Beautiful Lawn Awaits</h2>
                <p>We offer professional lawn mowing and care services to keep your lawn green and healthy all year round.</p>
                <a href="#" class="cta-button">Get a Quote</a>
            </section>
         
        </div>
    </main>

<div class="text-wrapper">


    
    
    <?php
// define variables and set to empty values
$fname = $lname = $email = $gender = $comment = $website = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    //we can check each $_POST variable with the test_input() function
  $lname = test_input($_POST["lname"]);
  $fname = test_input($_POST["fname"]);
  $email = test_input($_POST["email"]);
  // $website = test_input($_POST["website"]);
  $comment = test_input($_POST["comment"]);
  $gender = test_input($_POST["gender"]);
}

function test_input($data) {
  $data = trim($data); //Strip unnecessary characters (extra space, tab, newline)
  $data = stripslashes($data);//Remove backslashes (\) from the user input data
  $data = htmlspecialchars($data);// saved as HTML escaped code
  return $data;
}
?>
</head>
<body>


    <div class="row">

  <div class="main"> 
      <h2>Contact Form</h2>

<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
    <?php // The htmlspecialchars() function converts special characters to HTML entities. ?>
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="<?php print $fname;?>"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="<?php print $lname;?>"><br><br>
<label for="email">Email:</label><br>
  <input type="text" id="email" name="email" value="<?php print $email;?>"><br><br>
    <label for="comment">Comment:</label><br>
     <textarea name="comment" rows="5" cols="40" value="<?php print $comment;?>"></textarea><br><br>
    <label for="gender">Gender:<?php print $gender;?></label><br>
<input type="radio" name="gender" value="female">Female
<input type="radio" name="gender" value="male">Male
<input type="radio" name="gender" value="other">Other
  <br><br>
    <input type="submit" value="Submit">


</form> 

</div>
</div>
    </div>
   <?php include 'footer.php'; ?>


    
</body>
</html>

    
    
    
    
    
    
    



