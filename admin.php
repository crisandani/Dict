<!DOCTYPE html>
<?php 
 
include'session.php';
if($_SESSION['login_user']!='admin@yahoo.com')
	 header("Location: indexLogat.php");
//$sql='select first_name,last_name,e_mail,password,birthday from users';
//$sql='select first_name,last_name,e_mail,password,birthday from users where first_name<>"Admin"';
$sql='select first_name,last_name,e_mail,password,birthday from users where first_name not like"%Admin"';
$result=mysqli_query($db,$sql);
/*
if(mysqli_num_rows($result))
    {

       $row=mysqli_fetch_row($result);
		
	}
	
	var_dump($result);
	
	$a=mysqli_affected_rows($result);
	var_dump($a);
	$matrice[5][5];*/
	$aux=array();
	$ceva=array();
$l=$k=0;
	while($row=mysqli_fetch_array($result)){
		
		if($row['e_mail']!=$user_check){
		array_push($aux,$row['first_name'],$row['last_name'],$row['e_mail'],$row['password'],$row['birthday']);
		$k++;
		}
	}
		
		
	
	
?>

<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
   <link rel="stylesheet" href="styleAdmin.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <title>Index</title>
</head>

 <body>
 
 
<div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Contul meu</button>
  <div id="myDropdown" class="dropdown-content">
  <p id="Hi">Salut, <?php echo $_SESSION['nume']; ?><p>
    <a href="logout.php">Log Out</a>
	
   
  </div>
</div>
	
</ul> </div>
<table>
<tr>
    <th>Firstname</th>
    <th>Lastname</th> 
    <th>E-mail</th>
	<th>Password</th>
	<th>Birthday</th>
  </tr>
  <?php

$p=2;
for ($i = 0;$i<$k;$i++){ 
echo $k." ";

$ceva=$aux[$p];


    echo "<tr>";
	
    for ($j=0;$j<5;$j++)
		
        {
			
            echo "  <td>".$aux[$l++]."</td>\n";
		}
			echo '  <td> <div>
		<ul>
		<form action="sterge.php" method="post">
		 <button class="Sterge" type="submit" name="sterge" value='.$ceva.' onclick="validate()">Sterge</button>
		 
		
		 </form></ul></div> </td>';
			
			
        

    echo "</tr>";
	$p+=5;
};



?></table>

<!--<div class="checkbox">
	<ul>
		<form>
		 <input type="checkbox" name="it" value="it">IT
		 <input type="checkbox" name="automatizari" value="automatizari">Automatizari
		
		 </form></ul></div>
  <form>


  <form>
<div class="container">
	<input id="SearchBar" type="text" name="SearchBar" placeholder="Caută...">
	<button id="Search" type="submit">
	<i class="fa fa-search"></i></button>
	</div>
</form>-->



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



function validate()
{
	conf = confirm("Sigur stergi acest utilizator ?");
	if (conf)
		var t=0;
	else{
		alert("Nu s-a sters");
		event.preventDefault();
		
	}
}
</script>
  



  </body>

</html>﻿