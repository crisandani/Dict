<!DOCTYPE html>
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

	<input id="SearchBar" type="text" name="Search" placeholder="Caută...">
	<button id="Search"  name="Submit" type="submit">
	<i class="fa fa-search"></i></button>
	</form>
	<form>
	<div class="checkbox">
	<input  onChange="uncheck()" type="checkbox"id="Toate" name="Toate" checked>Toate
	<input onChange="uncheck()" type="checkbox" id="it" name="It" value="1" >IT
	<input onChange="uncheck()" type="checkbox" id="aut" name="Automatizari" value='2' >Automatizari
	</div>
	</form>
	
	



  </body>
    <script>
function uncheck(){
if((document.getElementById('it').checked ||document.getElementById('aut').checked )==true)
	document.getElementById('Toate').checked=false;
else document.getElementById('Toate').checked=true;
}
</script>

</html>﻿