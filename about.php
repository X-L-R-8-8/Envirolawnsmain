<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <?php include("banner.php"); ?>
    <?php 
        require_once 'setup.php';
        $sql = "SELECT * FROM pages where id = 1 ";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $title1 = $row['title1'];
            $text1 = $row['text1'];
            $image1 = $row['image1'];
        }
    ?>

    <div class="about-container">
        <div class="about-text">
            <h2><?php echo $title1; ?></h2>

<p>Hi, I’m Charlie, I’m 16 years old, and I’ve lived in Omaha for 5 years. After learning about the effects of CO2 pollution on the environment and the importance of sustainability as part of our role as kaitiakitanga for our planet, I wanted to do something positive.</p>
<p>Most people employ lawn mowing services in Omaha, and none of them is carbon neutral... until now.</p>
<p>Research from the USA shows that gasoline-powered lawnmowers use 200 million gallons of gas per year and emit eight times more nitrogen oxides, 3,300 times more hydrocarbons, 5,000 times more carbon monoxide, and more than twice the CO2 per hour of operation than electric lawnmowers.</p>
<p>I use Meridian Energy so my batteries are charged from renewable electricity. In fact, by not buying your own lawnmower and using me, you’re helping our environment and improving our air quality.</p>
<p>A new gas-powered lawnmower produces the same amount of volatile organic compounds and nitrogen oxides emissions of air pollution in one hour of operation as 11 new cars each being driven for one hour.</p>


        </div>

        <div class="profile-container">
            <div class="profile-image">
                <img src="optimizedimages/<?php echo $image1; ?>" alt="Profile Photo">
            </div>

            <div class="contact-form">
                <h3>Contact Form</h3>
                <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                    <!-- Your form fields go here -->
                    <label for="fname">First name:</label>
                    <input type="text" id="fname" name="fname" value="<?php print $fname;?>"><br>

                    <label for="lname">Last name:</label>
                    <input type="text" id="lname" name="lname" value="<?php print $lname;?>"><br>

                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email" value="<?php print $email;?>"><br>

                    <label for="comment">Comment:</label>
                    <textarea name="comment" rows="3" cols="20" value="<?php print $comment;?>"></textarea>

                    <input type="submit" value="Submit">
                </form>
            </div>
        </div>
    </div>
    
    
                 <?php
// define variables and set to empty values
$fname = $lname = $email = $comment = $website = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    //we can check each $_POST variable with the test_input() function
  $lname = test_input($_POST["lname"]);
  $fname = test_input($_POST["fname"]);
  $email = test_input($_POST["email"]);
  $comment = test_input($_POST["comment"]);
}

function test_input($data) {
  $data = trim($data); //Strip unnecessary characters (extra space, tab, newline)
  $data = stripslashes($data);//Remove backslashes (\) from the user input data
  $data = htmlspecialchars($data);// saved as HTML escaped code
  return $data;
}
    
    include "setup.php";
    
    
    
    
$sql = "INSERT INTO contacts (fname, lname, email, comment)
VALUES ('$fname', '$lname', '$email', '$comment')";



$conn->close();
    
    

     include("footer.php"); ?>
</body>
</html>






