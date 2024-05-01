
INSERT INTO `GENRES` (`Genre`, `MovieID`) VALUES 
('Sci-Fi', 1), -- The Matrix
('Sci-Fi', 2), -- Interstellar
('Romance', 3), -- When Harry Met Sally
('Horror', 4), -- The Shining
('Fantasy', 5), -- Spirited Away
('Musical', 6), -- The Sound of Music
('Mystery', 7), -- The Prestige
('War', 8), -- Schindler's List
('War', 9), -- Saving Private Ryan
('Western', 10), -- The Good, the Bad and the Ugly
('Sci-Fi', 11), -- Blade Runner 2049
('Mystery', 12), -- Gone Girl
('Romance', 13), -- The Notebook
('Animation', 14), -- Finding Nemo
('Adventure', 15), -- The Princess Bride
('Sci-Fi', 16), -- Inception
('Sci-Fi', 17), -- The Martian
('Romance', 18), -- La La Land
('Action', 19), -- Pirates of the Caribbean: The Curse of the Black Pearl
('Animation', 20), -- Toy Story
('Thriller', 21), -- The Silence of the Lambs
('Biography', 22), -- The Social Network
('Horror', 23), -- Get Out
('Animation', 24), -- The Lion King
('Action', 25), -- The Avengers
('Adventure', 26), -- Jurassic Park
('Drama', 27), -- Forrest Gump
('Action', 28), -- Mad Max: Fury Road
('Drama', 29), -- The Shawshank Redemption
('Comedy', 30), -- Groundhog Day
('Action', 31), -- Die Hard
('Mystery', 32), -- The Sixth Sense
('Romance', 33), -- Titanic
('Animation', 34), -- Up
('Fantasy', 35), -- Harry Potter and the Philosopher's Stone
('Action', 36), -- The Dark Knight
('Sci-Fi', 37), -- Gravity
('Romance', 38), -- Silver Linings Playbook
('Adventure', 39), -- Indiana Jones and the Raiders of the Lost Ark
('Animation', 40), -- Beauty and the Beast
('Thriller', 41), -- Se7en
('Biography', 42), -- A Beautiful Mind
('Horror', 43), -- Psycho
('Musical', 44), -- Singin' in the Rain
('Sci-Fi', 45), -- The Matrix Reloaded
('Adventure', 46), -- Back to the Future
('Romance', 47), -- Eternal Sunshine of the Spotless Mind
('Adventure', 48), -- Raiders of the Lost Ark
('Sci-Fi', 49), -- The Martian
('Comedy', 50); -- Groundhog Day

-- Inserting movies
INSERT INTO `MOVIE` (`MovieId`, `Title`,`ReleaseYear`, `CountryCreated`, `DirectorID`) VALUES
(1, 'The Matrix', 1999, 'USA', 1), (2, 'Interstellar', 2014, 'USA', 2), (3, 'When Harry Met Sally', 1989, 'USA', 3),
(4, 'The Shining', 1980, 'USA', 4), (5, 'Spirited Away', 2001, 'Japan', 5), (6, 'The Sound of Music', 1965, 'USA', 6),
(7, 'The Prestige', 2006, 'USA', 7), (8, 'Schindler''s List', 1993, 'USA', 8), (9, 'Saving Private Ryan', 1998, 'USA', 9),
(10, 'The Good, the Bad and the Ugly', 1966, 'Italy', 10), (11, 'Blade Runner 2049', 2017, 'USA', 11),
(12, 'Gone Girl', 2014, 'USA', 12), (13, 'The Notebook', 2004, 'USA', 13), (14, 'Finding Nemo', 2003, 'USA', 14),
(15, 'The Princess Bride', 1987, 'USA', 15), (16, 'Inception', 2010, 'USA', 16), (17, 'The Martian', 2015, 'USA', 17),
(18, 'La La Land', 2016, 'USA', 18), (19, 'Pirates of the Caribbean: The Curse of the Black Pearl', 2003, 'USA', 19),
(20, 'Toy Story', 1995, 'USA', 20), (21, 'The Silence of the Lambs', 1991, 'USA', 21), (22, 'The Social Network', 2010, 'USA', 22),
(23, 'Get Out', 2017, 'USA', 23), (24, 'The Lion King', 1994, 'USA', 24), (25, 'The Avengers', 2012, 'USA', 25),
(26, 'Jurassic Park', 1993, 'USA', 26), (27, 'Forrest Gump', 1994, 'USA', 27), (28, 'Mad Max: Fury Road', 2015, 'Australia', 28),
(29, 'The Shawshank Redemption', 1994, 'USA', 29), (30, 'Groundhog Day', 1993, 'USA', 30), (31, 'Die Hard', 1988, 'USA', 31),
(32, 'The Sixth Sense', 1999, 'USA', 32), (33, 'Titanic', 1997, 'USA', 33), (34, 'Up', 2009, 'USA', 34),
(35, 'Harry Potter and the Philosopher''s Stone', 2001, 'USA', 35), (36, 'The Dark Knight', 2008, 'USA', 36),
(37, 'Gravity', 2013, 'USA', 37), (38, 'Silver Linings Playbook', 2012, 'USA', 38), (39, 'Indiana Jones and the Raiders of the Lost Ark', 1981, 'USA', 39),
(40, 'Beauty and the Beast', 1991, 'USA', 40), (41, 'Se7en', 1995, 'USA', 41), (42, 'A Beautiful Mind', 2001, 'USA', 42),
(43, 'Psycho', 1960, 'USA', 43), (44, 'Singin'' in the Rain', 1952, 'USA', 44), (45, 'The Matrix Reloaded', 2003, 'USA', 1),
(46, 'Back to the Future', 1985, 'USA', 45), (47, 'Eternal Sunshine of the Spotless Mind', 2004, 'USA', 47),
(48, 'Raiders of the Lost Ark', 1981, 'USA', 39), (49, 'The Martian', 2015, 'USA', 17), (50, 'Groundhog Day', 1993, 'USA', 30), (51, 'Jaws', 1975, 'USA' 39),
  (52, 'Ready Player One', 2018, 'USA', 39), (53, 'A CLockwork Orange', 1971, 'Britain', 4);

-- Inserting main actors
INSERT INTO `MAIN_ACTORS` (`ActorID`, `FN`,`LN`, `DOB`, `CountryOrigin`) VALUES
(1, 'Keanu', 'Reeves', '1964-09-02', 'USA'), (2, 'Matthew', 'McConaughey', '1969-11-04', 'USA'), (3, 'Meg', 'Ryan', '1961-11-19', 'USA'),
(4, 'Jack', 'Nicholson', '1937-04-22', 'USA'), (5, 'Daveigh', 'Chase', '1990-07-24', 'USA'), (6, 'Julie', 'Andrews', '1935-10-01', 'UK'),
(7, 'Christian', 'Bale', '1974-01-30', 'UK'), (8, 'Liam', 'Neeson', '1952-06-07', 'Ireland'), (9, 'Tom', 'Hanks', '1956-07-09', 'USA'),
(10, 'Clint', 'Eastwood', '1930-05-31', 'USA'), (11, 'Ryan', 'Gosling', '1980-11-12', 'Canada'), (12, 'Ben', 'Affleck', '1972-08-15', 'USA'),
(13, 'Rachel', 'McAdams', '1978-11-17', 'Canada'), (14, 'Albert', 'Brooks', '1947-07-22', 'USA'), (15, 'Cary', 'Elwes', '1962-10-26', 'UK'),
(16, 'Leonardo', 'DiCaprio', '1974-11-11', 'USA'), (17, 'Matt', 'Damon', '1970-10-08', 'USA'), (18, 'Emma', 'Stone', '1988-11-06', 'USA'),
(19, 'Johnny', 'Depp', '1963-06-09', 'USA'), (20, 'Tom', 'Hanks', '1956-07-09', 'USA'), (21, 'Jodie', 'Foster', '1962-11-19', 'USA'),
(22, 'Jesse', 'Eisenberg', '1983-10-05', 'USA'), (23, 'Daniel', 'Kaluuya', '1989-02-24', 'UK'), (24, 'Matthew', 'Broderick', '1962-03-21', 'USA'),
(25, 'Robert', 'Downey Jr.', '1965-04-04', 'USA'), (26, 'Sam', 'Neill', '1947-09-14', 'Ireland'), (27, 'Tom', 'Hanks', '1956-07-09', 'USA'),
(28, 'Tom', 'Hardy', '1977-09-15', 'UK'), (29, 'Tim', 'Robbins', '1958-10-16', 'USA'), (30, 'Bill', 'Murray', '1950-09-21', 'USA'),
(31, 'Bruce', 'Willis', '1955-03-19', 'Germany'), (32, 'Bruce', 'Willis', '1955-03-19', 'Germany'), (33, 'Leonardo', 'DiCaprio', '1974-11-11', 'USA'),
(34, 'Edward', 'Asner', '1929-11-15', 'USA'), (35, 'Daniel', 'Radcliffe', '1989-07-23', 'UK'), (36, 'Christian', 'Bale', '1974-01-30', 'UK'),
(37, 'Sandra', 'Bullock', '1964-07-26', 'USA'), (38, 'Bradley', 'Cooper', '1975-01-05', 'USA'), (39, 'Harrison', 'Ford', '1942-07-13', 'USA'),
(40, 'Paige', 'O''Hara', '1956-05-10', 'USA'), (41, 'Brad', 'Pitt', '1963-12-18', 'USA'), (42, 'Russell', 'Crowe', '1964-04-07', 'New Zealand'),
(43, 'Anthony', 'Perkins', '1932-04-04', 'USA'), (44, 'Gene', 'Kelly', '1912-08-23', 'USA'), (45, 'Keanu', 'Reeves', '1964-09-02', 'USA'),
(46, 'Michael', 'J. Fox', '1961-06-09', 'Canada'), (47, 'Jim', 'Carrey', '1962-01-17', 'Canada'), (48, 'Harrison', 'Ford', '1942-07-13', 'USA'),
(49, 'Matt', 'Damon', '1970-10-08', 'USA'), (50, 'Bill', 'Murray', '1950-09-21', 'USA');
-- Inserting ratings
INSERT INTO `RATINGS` (`RatingNum`, `ReviewText`,`MovieID`, `ActorID`)  VALUES
(5, 'Great movie!', 1, 1), (4, 'Amazing visuals!', 2, 2), (4, 'Classic rom-com!', 3, 3), 
(5, 'Terrifying!', 4, 4), (5, 'Incredible animation!', 5, 5), (5, 'Iconic musical!', 6, 6),
(4, 'Mind-bending!', 7, 7), (5, 'Emotionally powerful!', 8, 8), (4, 'Intense!', 9, 9), 
(5, 'Timeless classic!', 10, 10), (5, 'Stunning visuals!', 11, 11), (4, 'Twisted thriller!', 12, 12),
(4, 'Heartfelt romance!', 13, 13), (5, 'Charming adventure!', 14, 14), (5, 'Hilarious!', 15, 15),
(5, 'Action-packed!', 16, 16), (4, 'Epic sci-fi!', 17, 17), (5, 'Beautifully crafted!', 18, 18),
(4, 'Swashbuckling fun!', 19, 19), (5, 'Toy-tastic!', 20, 20), (5, 'Chilling!', 21, 21),
(5, 'Thought-provoking!', 22, 22), (4, 'Tense thriller!', 23, 23), (5, 'Disney classic!', 24, 24),
(5, 'Superhero extravaganza!', 25, 25), (5, 'Classic adventure!', 26, 26), (4, 'Quirky comedy!', 27, 27),
(5, 'Action-packed!', 28, 28), (4, 'Mind-bending!', 29, 29), (5, 'Hilarious!', 30, 30), (5, 'Action-packed!', 31, 31),
(4, 'Twisty thriller!', 32, 32), (5, 'Epic romance!', 33, 33), (5, 'Magical adventure!', 34, 34), (4, 'Laugh-out-loud funny!', 35, 35),
(5, 'Mind-bending!', 36, 36), (4, 'Intense!', 37, 37), (5, 'Heartfelt!', 38, 38), (5, 'Thrilling!', 39, 39),
(4, 'Enchanting!', 40, 40), (5, 'Dark and gritty!', 41, 41), (5, 'Inspiring!', 42, 42), (4, 'Creepy!', 43, 43),
(5, 'Classic musical!', 44, 44), (5, 'Action-packed sequel!', 45, 45), (5, 'Time-traveling adventure!', 46, 46),
(5, 'Romantic comedy!', 47, 47), (5, 'Iconic adventure!', 48, 48), (4, 'Thrilling sci-fi!', 49, 49), (5, 'Hilarious comedy!', 50, 50);
-- Inserting main directors
INSERT INTO `MAIN_DIRECTOR` (`DirectorID`, `FN`,`MN`, `LN`)  VALUES
(1, 'Lana', NULL, 'Wachowski'), (2, 'Christopher', NULL, 'Nolan'), (3, 'Rob', NULL, 'Reiner'),
(4, 'Stanley', NULL, 'Kubrick'), (5, 'Hayao', NULL, 'Miyazaki'), (6, 'Robert', NULL, 'Wise'),
(7, 'Christopher', NULL, 'Nolan'), (8, 'Steven', NULL, 'Spielberg'), (9, 'Steven', NULL, 'Spielberg'),
(10, 'Sergio', NULL, 'Leone'), (11, 'Denis', NULL, 'Villeneuve'), (12, 'David', NULL, 'Fincher'),
(13, 'Nick', NULL, 'Cassavetes'), (14, 'Andrew', NULL, 'Stanton'), (15, 'Rob', NULL, 'Reiner'),
(16, 'Christopher', NULL, 'Nolan'), (17, 'Ridley', NULL, 'Scott'), (18, 'Damien', NULL, 'Chazelle'),
(19, 'Gore', NULL, 'Verbinski'), (20, 'John', NULL, 'Lasseter'), (21, 'Jonathan', NULL, 'Demme'),
(22, 'David', NULL, 'Fincher'), (23, 'Jordan', NULL, 'Peele'), (24, 'Roger', NULL, 'Allers'),
(25, 'Joss', NULL, 'Whedon'), (26, 'Steven', NULL, 'Spielberg'), (27, 'Robert', NULL, 'Zemeckis'),
(28, 'George', NULL, 'Miller'), (29, 'Frank', NULL, 'Darabont'), (30, 'Harold', NULL, 'Ramis'),
(31, 'John', NULL, 'McTiernan'), (32, 'M. Night', NULL, 'Shyamalan'), (33, 'James', NULL, 'Cameron'),
(34, 'Pete', NULL, 'Docter'), (35, 'Chris', NULL, 'Columbus'), (36, 'Christopher', NULL, 'Nolan'),
(37, 'Alfonso', NULL, 'Cuarón'), (38, 'David', NULL, 'O. Russell'), (39, 'Steven', NULL, 'Spielberg'),
(40, 'Gary', NULL, 'Trousdale'), (41, 'David', NULL, 'Fincher'), (42, 'Ron', NULL, 'Howard'),
(43, 'Alfred', NULL, 'Hitchcock'), (44, 'Stanley', NULL, 'Donen'), (45, 'Robert', NULL, 'Zemeckis'),
(46, 'Robert', 'Zemeckis', NULL), (47, 'Michel', NULL, 'Gondry'), (48, 'Steven', NULL, 'Spielberg'),
(49, 'Ridley', NULL, 'Scott'), (50, 'Harold', NULL, 'Ramis');
-- Inserting platforms
INSERT INTO `PLATFORM` (`PlatformID`, `PlatformName`,`Price`, `DateAdded`)  VALUES
(1, 'Netflix', 9.99, '2023-01-01'), (2, 'Amazon Prime Video', 8.99, '2022-12-15'), (3, 'Hulu', 7.99, '2023-02-20');
-- Inserting is_on
INSERT INTO `IS_ON` (`MovieID`, `PlatformID`)  VALUES
(1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (2, 3), (3, 1), (3, 2), (3, 3), (4, 1),
(4, 2), (4, 3), (5, 1), (5, 2), (5, 3), (6, 1), (6, 2), (6, 3), (7, 1), (7, 2),
(7, 3), (8, 1), (8, 2), (8, 3), (9, 1), (9, 2), (9, 3), (10, 1), (10, 2), (10, 3),
(11, 1), (11, 2), (11, 3), (12, 1), (12, 2), (12, 3), (13, 1), (13, 2), (13, 3),
(14, 1), (14, 2), (14, 3), (15, 1), (15, 2), (15, 3), (16, 1), (16, 2), (16, 3),
(17, 1), (17, 2), (17, 3), (18, 1), (18, 2), (18, 3), (19, 1), (19, 2), (19, 3),
(20, 1), (20, 2), (20, 3), (21, 1), (21, 2), (21, 3), (22, 1), (22, 2), (22, 3),
(23, 1), (23, 2), (23, 3), (24, 1), (24, 2), (24, 3), (25, 1), (25, 2), (25, 3),
(26, 1), (26, 2), (26, 3), (27, 1), (27, 2), (27, 3), (28, 1), (28, 2), (28, 3),
(29, 1), (29, 2), (29, 3), (30, 1), (30, 2), (30, 3), (31, 1), (31, 2), (31, 3),
(32, 1), (32, 2), (32, 3), (33, 1), (33, 2), (33, 3), (34, 1), (34, 2), (34, 3),
(35, 1), (35, 2), (35, 3), (36, 1), (36, 2), (36, 3), (37, 1), (37, 2), (37, 3),
(38, 1), (38, 2), (38, 3), (39, 1), (39, 2), (39, 3), (40, 1), (40, 2), (40, 3),
(41, 1), (41, 2), (41, 3), (42, 1), (42, 2), (42, 3), (43, 1), (43, 2), (43, 3),
(44, 1), (44, 2), (44, 3), (45, 1), (45, 2), (45, 3), (46, 1), (46, 2), (46, 3),
(47, 1), (47, 2), (47, 3), (48, 1), (48, 2), (48, 3), (49, 1), (49, 2), (49, 3),
(50, 1), (50, 2), (50, 3);
-- Inserting has
INSERT INTO `HAS` (`ActorID`, `PlatformID`)  VALUES
(1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (2, 3), (3, 1), (3, 2), (3, 3), (4, 1),
(4, 2), (4, 3), (5, 1), (5, 2), (5, 3), (6, 1), (6, 2), (6, 3), (7, 1), (7, 2),
(7, 3), (8, 1), (8, 2), (8, 3), (9, 1), (9, 2), (9, 3), (10, 1), (10, 2), (10, 3),
(11, 1), (11, 2), (11, 3), (12, 1), (12, 2), (12, 3), (13, 1), (13, 2), (13, 3),
(14, 1), (14, 2), (14, 3), (15, 1), (15, 2), (15, 3), (16, 1), (16, 2), (16, 3),
(17, 1), (17, 2), (17, 3), (18, 1), (18, 2), (18, 3), (19, 1), (19, 2), (19, 3),
(20, 1), (20, 2), (20, 3), (21, 1), (21, 2), (21, 3), (22, 1), (22, 2), (22, 3),
(23, 1), (23, 2), (23, 3), (24, 1), (24, 2), (24, 3), (25, 1), (25, 2), (25, 3),
(26, 1), (26, 2), (26, 3), (27, 1), (27, 2), (27, 3), (28, 1), (28, 2), (28, 3),
(29, 1), (29, 2), (29, 3), (30, 1), (30, 2), (30, 3), (31, 1), (31, 2), (31, 3),
(32, 1), (32, 2), (32, 3), (33, 1), (33, 2), (33, 3), (34, 1), (34, 2), (34, 3),
(35, 1), (35, 2), (35, 3), (36, 1), (36, 2), (36, 3), (37, 1), (37, 2), (37, 3),
(38, 1), (38, 2), (38, 3), (39, 1), (39, 2), (39, 3), (40, 1), (40, 2), (40, 3),
(41, 1), (41, 2), (41, 3), (42, 1), (42, 2), (42, 3), (43, 1), (43, 2), (43, 3),
(44, 1), (44, 2), (44, 3), (45, 1), (45, 2), (45, 3), (46, 1), (46, 2), (46, 3),
(47, 1), (47, 2), (47, 3), (48, 1), (48, 2), (48, 3), (49, 1), (49, 2), (49, 3),
(50, 1), (50, 2), (50, 3);
