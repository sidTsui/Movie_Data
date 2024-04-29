<?php
	try {
		require('../pdo_connect.php'); //Connect to the database
		$sql = "SELECT m.Title, d.FN, d.LN, p.PlatformName FROM MOVIE AS m JOIN MAIN_DIRECTOR AS d ON m.DirectorID = d.DirectorID LEFT JOIN IS_ON AS io ON m.MovieID = io.MovieID LEFT JOIN PLATFORM AS p ON io.PlatformID = p.PlatformID WHERE m.ReleaseYear = 2001 AND m.CountryCreated = 'USA'";
		$result = $dbc->query($sql);	
	} catch (PDOException $e){
			echo $e->getMessage();
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Movies released in 2001</title>
	<meta charset ="utf-8"> 
</head>
<body>
	<h2>Movies released in 2001 with their directors name and their platform.</h2>

	<table>
		<tr>
			<th>Title</th>
			<th>Director</th>
			<th>Platform</th>
		</tr>	
		<?php foreach ($result as $client) {
			echo "<tr>";
			echo "<td>".$client["Title"]."</td>";
			echo "<td>".$client["FN"]." " . $client["LN"]. "</td>";
			echo "<td>" . $client["PlatformName"]."</td>";
			echo "</tr>";
		}
		?>
	</table>
</body>    
</html>

