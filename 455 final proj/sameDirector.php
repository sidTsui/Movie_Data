<?php
	try {
		require('../pdo_connect.php'); //Connect to the database
		$sql = "SELECT DISTINCT m1.Title AS MovieTitle1, m2.Title AS MovieTitle2, d.FN, d.LN
		FROM MOVIE AS m1
		JOIN MOVIE AS m2 ON m1.DirectorID = m2.DirectorID AND m1.Title != m2.Title AND m1.Title < m2.Title
		JOIN MAIN_DIRECTOR AS d ON m1.DirectorID = d.DirectorID;";
		$result = $dbc->query($sql);	
	} catch (PDOException $e){
			echo $e->getMessage();
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Movies That Have the Same Director</title>
	<meta charset ="utf-8"> 
</head>
<body>
	<h2>Movies That Have the Same Director.</h2>

	<table>
		<tr>
			<th>Movie 1</th>
			<th>Movie 2</th>
			<th>Director First Name</th>
			<th>Director Last Name</th>
		</tr>
		<?php foreach ($result as $row) { ?>
			<tr>
				<td><?php echo $row['MovieTitle1']; ?></td>
				<td><?php echo $row['MovieTitle2']; ?></td>
				<td><?php echo $row['DirectorFirstName']; ?></td>
				<td><?php echo $row['DirectorLastName']; ?></td>
			</tr>
		<?php } ?>
	</table>
</body>    
</html>