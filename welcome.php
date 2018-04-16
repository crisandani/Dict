<?php session_start();
if(!isset($_SESSION['username']))
{
	header("location:login.php");
}
?>
<html>
 <head>
  <meta charset="UTF-8">
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <title>Index</title>
</head>

 <body>
 <div class="butoane1">
<ul>
    <form>
		<a href="login.php?action='logout'"><button class="Butoane" type="button" title="Logout"><i class="fa fa-sign-out"></i></button></a>
	</form>
</ul> </div>


<!--Afiseaza Welcome usermane -->
<p style="color:white"><?php  echo "Welcome ".$_SESSION['username']; ?></p>



<div class="checkbox">
	<ul>
		<form>
		 <input type="checkbox" name="it" value="it">IT
		 <input type="checkbox" name="automatizari" value="automatizari">Automatizari
		 <input type="checkbox" name="literatura" value="literatura">Literatura
		 <input type="checkbox" name="medicina" value="medicina">Medicina
		 </form></ul></div>

<form>
	<input id="SearchBar" type="text" name="SearchBar" placeholder="Caută...">
	<button id="Search" type="submit">
	<i class="fa fa-search"></i></button>
</form>

  



  </body>

</html>﻿