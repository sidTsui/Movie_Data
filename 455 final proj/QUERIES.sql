/*Requirement: Two-table join
Description: Find all movies released in the USA in 2001 and their directors' names.
Implementaion: joins MOVIES with MAIN_DIRECTOR based on DirectorID*/

SELECT m.Title, d.FN, d.LN
FROM MOVIE AS m
JOIN MAIN_DIRECTOR AS d ON m.DirectorID = d.DirectorID
WHERE m.ReleaseYear = 2001
AND m.CountryCreated = 'USA';

/*Requirement: Three-table join: 
Description: Find all movies released in the USA in 2001 and their directors' names and their platform
Implemenation: left join to joing PLATFORM using IS_ON*/
SELECT m.Title, d.FN, d.LN, p.PlatformName
FROM MOVIE AS m
JOIN MAIN_DIRECTOR AS d ON m.DirectorID = d.DirectorID
LEFT JOIN IS_ON AS io ON m.MovieID = io.MovieID
LEFT JOIN PLATFORM AS p ON io.PlatformID = p.PlatformID
WHERE m.ReleaseYear = 2001
AND m.CountryCreated = 'USA';

********************
/*Requirement: Self-join: 

Description: Find all movies where director of movie 1 matches the director of movie 2.
Implementation: joins MOVIES w/ MOVIES based on DirectorId
 needs php */
SELECT DISTINCT m1.Title AS MovieTitle1, m2.Title AS MovieTitle2, d.FN, d.LN
FROM MOVIE AS m1
JOIN MOVIE AS m2 ON m1.DirectorID = m2.DirectorID AND m1.Title != m2.Title AND m1.Title < m2.Title
JOIN MAIN_DIRECTOR AS d ON m1.DirectorID = d.DirectorID;

********************

 /*need to fix*/
Description: Find all movies whose director acted in the movie.
Implementation: joins MOVIES w/ MAIN_DIRECTOR and MAIN_ACTORS based on DirectorId and ActorID*/
SELECT m.Title, d.FN AS DirectorFirstName, d.LN AS DirectorLastName, ma.FN AS ActorFirstName, ma.LN AS ActorLastName
FROM MOVIE AS m
JOIN MAIN_DIRECTOR AS d ON m.DirectorID = d.DirectorID
JOIN MAIN_ACTORS AS ma ON m.MovieID = ma.MovieID 
AND d.ActorID = ma.ActorID;
**********************


/*Requirement: Aggregate function: multiple rows grouped into one 
Description: Find the total number of movies released in the USA.
Implementation: use COUNT() for num of movies in MOVIES table in the USA*/
SELECT COUNT(MovieID)
FROM MOVIE
WHERE CountryCreated = 'USA';

/*Requirement: Aggregate function using GROUP BY and HAVING: 
Description: Find the directors who have directed more than 2 movies.
Implementation: counts movies directed by each director and returns directors w/ <= 2 movies (uses HAVING)*/
SELECT d.FN, d.LN, COUNT(m.MovieID) AS TotalMoviesDirected
FROM MAIN_DIRECTOR d
LEFT JOIN MOVIE m ON m.DirectorID = d.DirectorID
GROUP BY d.FN, d.LN
HAVING TotalMoviesDirected > 2;

/*Requirement: Text-based search query using LIKE with wildcard: 
Description: Find all movies starting with "The" in their title.
Implementation: uses LIKE and % to search specific title*/
SELECT Title
FROM MOVIE
WHERE Title LIKE 'The%';

/*Requirement: Subquery:
 Description: Find all movies released in the USA in 1999 whose director has directed another movie
 Implementation: find directors who have directed more than one movie USA, 2002*/
SELECT Title
FROM MOVIE
WHERE ReleaseYear = 1999 AND CountryCreated = 'USA' AND DirectorID IN (
    SELECT DirectorID
    FROM MOVIE
    GROUP BY DirectorID
    HAVING COUNT(*) > 1
);

/*Requirement: Stored function to calculate the average rating for a movie*/
DELIMITER //
CREATE FUNCTION CalcAvgRating(movie_id INT) RETURNS DECIMAL(3,2)
BEGIN
    DECLARE avg_rating DECIMAL(3,2);
    SELECT AVG(RatingNum) INTO avg_rating FROM RATINGS WHERE MovieID = movie_id;
    RETURN avg_rating;
END //
DELIMITER;

-- Stored procedure to get the average rating for a movie
DELIMITER //
CREATE PROCEDURE GetAverageRatingForMovie(movie_title VARCHAR(255))
BEGIN
    DECLARE movie_id INT;
    SELECT MovieID INTO movie_id FROM MOVIE WHERE Title = movie_title;
    SELECT CalcAvgRating(movie_id) AS AverageRating;
END//
DELIMITER;

-- Trigger to update average rating when a new rating is inserted
CREATE TRIGGER UpdateAvgRating AFTER INSERT ON RATINGS
FOR EACH ROW
BEGIN
    DECLARE avg_rating DECIMAL(3,2);
    SELECT AVG(RatingNum) INTO avg_rating FROM RATINGS WHERE MovieID = NEW.MovieID;
    UPDATE MOVIES SET AverageRating = avg_rating WHERE MovieID = NEW.MovieID;
END;
