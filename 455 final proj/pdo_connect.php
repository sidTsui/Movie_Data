<?php 

// This file contains the database access information. 
// This file establishes a connection to MySQL and selects the database.
// This file needs to be uploaded to your home directory on ADA outside of the public_html folder

// Set the database access information as constants:
const DBCONNSTRING ='mysql:host=localhost;dbname= ADD YOUR PHPMYADMIN USERNAME HERE';
const DB_USER = 'ADD YOUR PHPMYADMIN USERNAME HERE';
const DB_PASSWORD = 'ADD YOUR PHPMYADMIN PASSWORD HERE';


// Make the connection:
try{
	$dbc = new PDO(DBCONNSTRING, DB_USER, DB_PASSWORD);
	echo "Connection successful";
} catch (PDOException $e){
	echo $e->getMessage();
}

?>
