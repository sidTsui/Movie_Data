<?php
	try {
		require('../pdo_connect.php'); //Connect to the database
		$sql = "SELECT d.FN, d.LN, COUNT(m.MovieID) AS TotalMoviesDirected FROM MAIN_DIRECTOR d LEFT JOIN MOVIE m ON m.DirectorID = d.DirectorID GROUP BY d.FN, d.LN HAVING TotalMoviesDirected > 2";
		$result = $dbc->query($sql);	
	} catch (PDOException $e){
			echo $e->getMessage();
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Directors with more than 2 movies directed</title>
	<meta charset ="utf-8"> 
</head>
<body>
	<h2>Directors with more than 2 movies directed</h2>

	<table>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Total Movies Directed</th>
		</tr>	
		<?php foreach ($result as $client) {
			echo "<tr>";
			echo "<td>".$client["FN"]."</td>";
			echo "<td>".$client["LN"]. "</td>";
			echo "<td>" . $client["TotalMoviesDirected"]."</td>";
			echo "</tr>";
		}
		?>
	</table>
</body>    
</html>

