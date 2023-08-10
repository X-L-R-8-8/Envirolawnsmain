<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Login</title>
         <link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<body>
        
        

<?php include("banner.php"); ?>

    
    <div class="text-wrapper">    
		<div class="login">
			<h1>Login</h1>
			<form action="authenticate.php" method="post">
				<label for="username">
					<i class="fas fa-user"></i>
				</label>
				<input type="text" name="username" placeholder="Username" id="username" required>
				<label for="password">
					<i class="fas fa-lock"></i>
				</label>
				<input type="password" name="password" placeholder="Password" id="password" required>
				<input type="submit" value="Login">
			</form>
		</div>
    </div>
        
        

   <?php include 'footer.php'; ?>
    
	</body>
</html>
