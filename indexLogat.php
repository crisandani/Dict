<!DOCTYPE html>
<?php 
include'session.php';
?>

<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
   <link rel="stylesheet" href="styleLogat.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <title>Index</title>
</head>

 <body>
 
 

 <div class="dropdown">

<div class="dropdown">

  <button onclick="myFunction()" class="dropbtn">Contul meu</button>
  <div id="myDropdown" class="dropdown-content">
  <p id="Hi">Salut, <?php echo $_SESSION['nume']; ?><p>
    <a href="logout.php">Log Out</a>
   
  </div>
</div>
	
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

<script>

function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
  
</html>﻿