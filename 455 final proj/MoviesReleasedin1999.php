<?php
	try {
		require('../pdo_connect.php'); //Connect to the database
		$sql = "SELECT Title FROM MOVIE WHERE ReleaseYear = 1999 AND CountryCreated = 'USA' AND DirectorID IN (
    SELECT DirectorID
    FROM MOVIE
    GROUP BY DirectorID
    HAVING COUNT(*) > 1)";
		$result = $dbc->query($sql);	
	} catch (PDOException $e){
			echo $e->getMessage();
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Movies Released in 1999</title>
	<meta charset ="utf-8"> 
</head>
<body>
	<h2>Movies Released in 1999 by Directors with Multiple Movies</h2>

	<table>
		<tr>
			<th>Title</th>
		</tr>	
		<?php foreach ($result as $client) {
			echo "<tr>";
			echo "<td>".$client["Title"]."</td>";
			echo "</tr>";
		}
		?>
	</table>
</body>    
</html>


