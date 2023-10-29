<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        .gallery-container {
            display: flex;
            align-items: flex-start;
        }
        
        .gallery {
            flex: 1;
            padding: 20px;
            margin-top: 20px; /* Adjust this value for desired spacing */
        }
        
        .gallery img {
            max-width: 70%;
            height: auto;
            display: block;
        }
        
        .text {
            flex: 2;
            padding: 20px;
        }
        
        .about-content {
            margin-top: 20px;
        }
    </style>
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
    
    <div class="gallery-container">
        <div class="text">
            <h2><?php echo $title1; ?></h2>
            <div class="about-content">
                <div class="about-section">
<p>Hi, I’m Charlie, I’m 16 years old, and I’ve lived in Omaha for 5 years. After learning about the effects of CO2 pollution on the environment and the importance of sustainability as part of our role as kaitiakitanga for our planet, I wanted to do something positive.</p>
<p>Most people employ lawn mowing services in Omaha, and none of them is carbon neutral... until now.</p>
<p>Research from the USA shows that gasoline-powered lawnmowers use 200 million gallons of gas per year and emit eight times more nitrogen oxides, 3,300 times more hydrocarbons, 5,000 times more carbon monoxide, and more than twice the CO2 per hour of operation than electric lawnmowers.</p>
<p>I use Meridian Energy so my batteries are charged from renewable electricity. In fact, by not buying your own lawnmower and using me, you’re helping our environment and improving our air quality.</p>
<p>A new gas-powered lawnmower produces the same amount of volatile organic compounds and nitrogen oxides emissions of air pollution in one hour of operation as 11 new cars each being driven for one hour.</p>
                </div>
            </div>
        </div>
        
        <div class="gallery">
            <img src="optimizedimages/<?php echo $image1; ?>" alt="Profile Photo">
        </div>
    </div>
    
    <?php include("footer.php"); ?>
</body>
</html>