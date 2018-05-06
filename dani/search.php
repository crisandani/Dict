<?php
	include("connection.php");
	
$min=1;

	if(isset($_POST['Search'])){
	$search=$_POST['Search'];
	if(strlen($search)<$min){
		$output='<div id="eroare">'."Trebuie sa introduci cel putin un caracter !".'</div>';
	}else{
	$search = htmlspecialchars($search);
	$search = mysqli_real_escape_string($db,$search);
	
	$query=mysqli_query($db,"SELECT * FROM words WHERE name LIKE '%$search%'") or die(mysql_error());
	
	if(mysqli_num_rows($query) > 0) {
	
	while($rezultate=mysqli_fetch_array($query)){
		$name=$rezultate['name'];
		$short=$rezultate['short'];
		$description=$rezultate['description'];
		
		$output .= '<div id="nume">'.$name.'</div><div id="short">'.$short.'</div><p>'.$description.'</p>';
		
	}
									}
									else {
									$output='<div id="eroare">'."Nu s-au gasit rezultate !".'</div>'; }
	}
	}


   ?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
   <link rel="stylesheet" href="styleSearch.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<form>
<button id="buton">Home</button>
</form>
<form action="search.php" method="post">
<div class="container">
	<input  id="SearchBar" type="text" name="Search" placeholder="Caută...">
	<button id="Search" name="Submit" type="submit">
	<i class="fa fa-search"></i></button>
	</div>
<?php echo("$output"); ?>
</body>



</html>
