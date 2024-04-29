<?php
	try {
		require('../pdo_connect.php'); //Connect to the database
		$sql = "SELECT m.Title, d.FN, d.LN FROM MOVIE AS m JOIN MAIN_DIRECTOR AS d ON m.DirectorID = d.DirectorID WHERE m.ReleaseYear = 2001 AND m.CountryCreated = 'USA'";
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
	<h2>Movies released in 2001 and their directors name.</h2>

	<table>
		<tr>
			<th>Title</th>
			<th>Director First Name</th>
			<th>Director Last Name</th>
		</tr>	
		<?php foreach ($result as $client) {
			echo "<tr>";
			echo "<td>".$client['Title']."</td>";
			echo "<td>".$client['FN']."       </td>";
			echo "<td>".$client['LN']."       </td>";
			echo "</tr>";
		}
		?>
	</table>
</body>    
</html>


