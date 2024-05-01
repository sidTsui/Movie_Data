<?php
	try {
		require('../pdo_connect.php'); //Connect to the database
		$sql = "SELECT d.FN, d.LN, GROUP_CONCAT(m1.Title ORDER BY m1.Title) AS DirectedMovies
FROM MAIN_DIRECTOR AS d
JOIN MOVIE AS m1 ON d.DirectorID = m1.DirectorID
JOIN MOVIE AS m2 ON d.DirectorID = m2.DirectorID AND m1.MovieID != m2.MovieID
GROUP BY d.DirectorID
HAVING COUNT(*) > 1;";
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
			<th>Director First Name</th>
			<th>Director Last Name</th>
			<th>Movies</th>
		</tr>
		<?php foreach ($result as $row) { ?>
			<tr>
				<td><?php echo $row['DirectorFirstName']; ?></td>
				<td><?php echo $row['DirectorLastName']; ?></td>
				<td><?php echo $row['DirectedMovies']; ?></td>
			</tr>
		<?php } ?>
	</table>
</body>    
</html>
