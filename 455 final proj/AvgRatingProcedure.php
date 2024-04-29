<?php  

  

try {  

    require('../pdo_connect.php'); // Connect to the database  

  

    // Now, call the existing procedure to get the average rating for a specific movie 

    $movie_title = "When Harry Met Sally"; // Replace with the actual movie title 

    $avg_rating_proc_query = "CALL GetAverageRatingForMovie('$movie_title')"; 

    $avg_rating_proc_result = $dbc->query($avg_rating_proc_query); 

    $avg_rating_row = $avg_rating_proc_result->fetch(PDO::FETCH_ASSOC); 

    $average_rating = $avg_rating_row['AverageRating']; 

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

  

    <h2>Average Rating for Movie '<?php echo $movie_title; ?>'</h2>  

   

    <p>Average rating: <?php echo $average_rating; ?></p> 

  

</body>      

  

</html> 

 
