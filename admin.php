<!DOCTYPE html>
<?php 
 
include'session.php';
if($_SESSION['login_user']!='admin@yahoo.com')
	 header("Location: indexLogat.php");
$sql='select first_name,last_name,e_mail,password,birthday from users where first_name not like"%Admin"';
$result=mysqli_query($db,$sql);
$output='';
	$aux=array();
	$ceva=array();
$l=$k=0;
	while($row=mysqli_fetch_array($result)){
		
		if($row['e_mail']!=$user_check){
		array_push($aux,$row['first_name'],$row['last_name'],$row['e_mail'],$row['password'],$row['birthday']);
		$k++;
		}
	}
	
	//---------------- ADAUGARE -----------------------
		$sql='select id,name,short,description from words_add';
		$result=mysqli_query($db,$sql);
		while($row=mysqli_fetch_array($result)){
			
		$output.='<div id="cuvN"><span id="name">'.$row['name'].'  </span><span id="short">'.$row['short'].'  </span><p><span id="description">'.$row['description'].'</span></p><form action="validare.php" method="post">
			<button id="BtnDa" name="butonDa" value='.$row['id'].' type="submit">Y</button><button id="BtnNu" name="butonNu" value='.$row['id'].' type="submit">N</button></form></div>';
			
		}
		//------------ MODIFICARE ---------------
		$sql='select id,name,short,description from words_modify';
		$result=mysqli_query($db,$sql);
		$outputM='';
		while($row=mysqli_fetch_array($result)){
			
		$outputM.='<div id="cuvM"><span id="name">'.$row['name'].'  </span><span id="short">'.$row['short'].'  </span><p><span id="description">'.$row['description'].'</span></p><form action="validare.php" method="post">
			<button id="BtnDa" name="butonDaM" value='.$row['id'].' type="submit">Y<button id="BtnNu" name="butonNuM" value='.$row['id'].'>N</form></div>';//.$capitol;
			
		}
		
	
	
?>

<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
   <link rel="stylesheet" href="styleAdmin.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <title>Admin</title>
</head>

 <body>
 
 
<div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Contul meu</button>
  <div id="myDropdown" class="dropdown-content">
  <p id="Hi">Salut, <?php echo $_SESSION['nume']; ?><p>
    <a href="logout.php">Log Out</a>
	
   
  </div>
</div>

<div id="divBtn">
<button class="btns"  onclick="showModif()">Modificate</button>
<button class="btns" onclick="showUseri()">Useri</button>
<button class="btns"  onclick="showCuvNoi()">Cuvinte Noi</button>
</div>

<!-----------------completeaza aici---------------------->
<div id="cuvNou" style="display:none;">
<?php echo("$output"); ?>
</div>


<div id="modif">
<?php echo("$outputM"); ?>
</div>
<!-------------completeaza mai sus ---------------->

	<!---------------------- Afisare useri -------------------------------->
</ul> </div>
<div id="useri" style="display:none;">
<table style="width:100%;	position:absolute;
top:15%;">
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



?></table></div>
<!-------------------------- sfarsit afisare useri ------------------------------>
<script>
<!-----------------------Buton Dropdown------------------->
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}
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


<!----------validare stergere useri ----------------->
function validate()
{
	conf = confirm("Sigur stergi acest utilizator ?");
	if (conf)
		var t=0;
	else{
		alert("Nu s-a sters");
		event.preventDefault();
		
	}
}<!---------------------------Toggle Butoane---------------------->
function showUseri() {
  document.getElementById('useri').style.display="block";
   document.getElementById('modif').style.display="none";
    document.getElementById('cuvNou').style.display="none";
}
function showModif() {
  document.getElementById('useri').style.display="none";
  document.getElementById('modif').style.display="block";
  document.getElementById('cuvNou').style.display="none";
}
function showCuvNoi() {
  document.getElementById('useri').style.display="none";
  document.getElementById('modif').style.display="none";
  document.getElementById('cuvNou').style.display="block";
}


</script>
  



  </body>

</html>﻿