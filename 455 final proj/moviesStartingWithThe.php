<?php
	try {
		require('../pdo_connect.php'); //Connect to the database
		$sql = "SELECT Title FROM  MOVIE WHERE Title LIKE 'The%'";
		$result = $dbc->query($sql);	
	} catch (PDOException $e){
			echo $e->getMessage();
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Movies starting with "The"</title>
	<meta charset ="utf-8"> 
</head>
<body>
	<h2>Movies starting with "The"</h2>

	<table>
		<tr>
			<th>Title</th>
		</tr>	
		<?php foreach ($result as $client) {
			echo "<tr>";
			echo "<td>".$client['Title']."</td>";
			echo "</tr>";
		}
		?>
	</table>
</body>    
</html>
