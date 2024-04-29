/*Requirement: Two-table join
Description: Find all movies released in the USA in 2002 and their directors' names.
Implementaion: joins MOVIES with MAIN_DIRECTOR based on DirectorID*/

SELECT m.Title, d.FN, d.LN
FROM MOVIES AS m
JOIN MAIN_DIRECTOR AS d ON m.DirectorID = d.DirectorID
WHERE m.ReleaseYear = 2002 
AND m.CountryCreated = 'USA';

/*Requirement: Three-table join: 
Description: Find all movies released in the USA in 2002 and their directors' names and their platform
Implemenation: left join to joing PLATFORM using IS_ON*/
SELECT m.Title, d.FN, d.LN, p.PlatformName
FROM MOVIES AS m
JOIN MAIN_DIRECTOR AS d ON m.DirectorID = d.DirectorID
LEFT JOIN IS_ON AS io ON m.MovieID = io.MovieID
LEFT JOIN PLATFORM AS p ON io.PlatformID = p.PlatformID
WHERE m.ReleaseYear = 2002 
AND m.CountryCreated = 'USA';

/*Requirement: Self-join: 
Description: Find all movies where director of movie 1 matches the director of movie 2.
Implementation: joins MOVIES w/ MOVIES based on DirectorId*/
SELECT m1.Title AS MovieTitle, m2.Title AS DirectorMovie
FROM MOVIE AS m1
JOIN MOVIE AS m2 ON m1.DirectorID = m2.DirectorID;

/*Requirement: Aggregate function: multiple rows grouped into one 
Description: Find the total number of movies released in the USA.
Implementation: use COUNT() for num of movies in MOVIES table in the USA*/
SELECT COUNT(MovieID)
FROM MOVIES
WHERE CountryCreated = 'USA';

/*Requirement: Aggregate function using GROUP BY and HAVING: 
Description: Find the directors who have directed more than 5 movies.
Implementation: counts movies directed by each director and returns directors w/ <= 5 movies (uses HAVING)*/
SELECT d.FN, d.LN, COUNT(m.MovieID) AS TotalMoviesDirected
FROM MAIN_DIRECTOR d
LEFT JOIN MOVIES m ON d.DirectorID = m.DirectorID
GROUP BY d.DirectorID
HAVING TotalMoviesDirected > 5;

/*Requirement: Text-based search query using LIKE with wildcard: 
Description: Find all movies starting with "The" in their title.
Implementation: uses LIKE and % to search specific title*/
SELECT Title
FROM MOVIES
WHERE Title LIKE 'The%';

/*Requirement: Subquery:
 Description: Find all movies released in the USA in 2002 whose director has directed another movie
 Implementation: find directors who have directed more than one movie USA, 2002*/
SELECT Title
FROM MOVIES
WHERE ReleaseYear = 2002 AND CountryCreated = 'USA' AND DirectorID IN (
    SELECT DirectorID
    FROM MOVIES
    GROUP BY DirectorID
    HAVING COUNT(*) > 1
);

/*Requirement: Stored function to calculate the average rating for a movie*/
CREATE FUNCTION CalcAvgRating(movie_id INT) RETURNS DECIMAL(3,2)
BEGIN
    DECLARE avg_rating DECIMAL(3,2);
    SELECT AVG(RatingNum) INTO avg_rating FROM RATINGS WHERE MovieID = movie_id;
    RETURN avg_rating;
END;

-- Stored procedure to get the average rating for a movie
CREATE PROCEDURE GetAverageRatingForMovie(movie_title VARCHAR(255))
BEGIN
    DECLARE movie_id INT;
    SELECT MovieID INTO movie_id FROM MOVIES WHERE Title = movie_title;
    SELECT CalcAvgRating(movie_id) AS AverageRating;
END;

-- Trigger to update average rating when a new rating is inserted
CREATE TRIGGER UpdateAvgRating AFTER INSERT ON RATINGS
FOR EACH ROW
BEGIN
    DECLARE avg_rating DECIMAL(3,2);
    SELECT AVG(RatingNum) INTO avg_rating FROM RATINGS WHERE MovieID = NEW.MovieID;
    UPDATE MOVIES SET AverageRating = avg_rating WHERE MovieID = NEW.MovieID;
END;
