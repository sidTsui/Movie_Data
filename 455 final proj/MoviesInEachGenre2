<?php
    try {
        require('../pdo_connect.php'); //Connect to the database
        $sql = "SELECT g.Genre AS Genre, COUNT(*) AS NumberOfMovies FROM GENRE AS g JOIN MOVIE_GENRE AS mg ON g.GenreID = mg.GenreID GROUP BY g.Genre";
        $result = $dbc->query($sql);    
    } catch (PDOException $e){
            echo $e->getMessage();
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Movies</title>
    <meta charset ="utf-8"> 
</head>
<body>
    <h2>Amount of Movies in Each Genre</h2>

    <table>
        <tr>
            <th>Genre</th>
            <th>Number of Movies</th>
        </tr>
        <?php foreach ($result as $row) { ?>
            <tr>
                <td><?php echo $row['Genre']; ?></td>
                <td><?php echo $row['NumberOfMovies']; ?></td>
            </tr>
        <?php } ?>
    </table>
</body>    
</html>
