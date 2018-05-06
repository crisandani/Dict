<!DOCTYPE html>
<?php 

?>


<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
   <link rel="stylesheet" href="style.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <title>Index</title>
</head>

 <body>
 
 <div class="butoane1">
<ul>
    <form>
		<a href="login.php"><button class="Butoane" type="button" title="Login"><i class="fa fa-sign-in"></i></button></a>
		<a href="signup.php"><button class="Butoane" type="button" title="Sign-Up"><i class="fa fa-address-card"></i></button></a>
	</form>
</ul> </div>

		 
<form action="search.php" method="post">
<div class="container">
	<input id="SearchBar" type="text" name="Search" placeholder="Caută...">
	<button id="Search"  name="Submit" type="submit">
	<i class="fa fa-search"></i></button>
	</div>
	<div class="checkbox">
	<input type="checkbox" name="it" value="it">IT
	<input type="checkbox" name="automatizari" value="automatizari">Automatizari
	</div>
	</div>
</form>

  



  </body>

</html>﻿