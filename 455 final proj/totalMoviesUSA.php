<?php
	try {
		require('../pdo_connect.php'); //Connect to the database
		$sql = "SELECT COUNT(MovieID) AS MoviesInUSA FROM MOVIE WHERE CountryCreated = 'USA'";
		$result = $dbc->query($sql);	
	} catch (PDOException $e){
			echo $e->getMessage();
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>HAFA</title>
	<meta charset ="utf-8"> 
</head>
<body>
	<h2>Movies released in 2001 and their directors name.</h2>

	<table>
		
		<?php foreach ($result as $client) {
			echo "Total movies created in USA: ".$client["MoviesInUSA"];
		}
		?>
	</table>
</body>    
</html>


