<?php  

  

try {  

    require('../pdo_connect.php'); // Connect to the database  

  

    // Now, call the existing function to calculate the average rating for a specific movie 

    $movie_id = 24; // Replace with the actual movie ID 

    $calc_avg_rating_query = "SELECT CalcAvgRating($movie_id) AS AverageRating"; 

    $calc_avg_rating_result = $dbc->query($calc_avg_rating_query); 

    $calc_avg_rating_row = $calc_avg_rating_result->fetch(PDO::FETCH_ASSOC); 

    $average_rating = $calc_avg_rating_row['AverageRating']; 

} catch (PDOException $e){  

    echo $e->getMessage();  

}  

  

?>  

  

<!DOCTYPE html>  

  

<html lang="en">  

  

<head>  

  

    <title>Average Rating Function</title>  

  

    <meta charset ="utf-8">   

  

</head>  

  

<body>  

  

    <h2>Average Rating for Movie with ID <?php echo $movie_id; ?></h2>  

   

    <p>Average rating: <?php echo $average_rating; ?></p> 

  

</body>      

  

</html> 

 
