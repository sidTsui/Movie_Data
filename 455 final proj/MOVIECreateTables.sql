/*done*/
CREATE TABLE `GENRES` (
  `MovieID` int PRIMARY KEY,
  `Genre` varchar(20) NOT NULL,
  FOREIGN KEY (`MovieID`) REFERENCES `MOVIE` (`MovieID`)
);

/*done*/
CREATE TABLE `MOVIE` (
  `MovieID` int PRIMARY KEY ,
  `Title` varchar(250) NOT NULL,
  `ReleaseYear` varchar(4) NOT NULL,
  `CountryCreated` varchar(40) NOT NULL,
  `DirectorID` int NOT NULL,
  FOREIGN KEY (`DirectorID`) REFERENCES `MAIN_DIRECTOR` (`DirectorID`)
);
/*done*/
CREATE TABLE `MAIN_ACTORS` (
  `ActorID` int PRIMARY KEY,
  `FN` varchar(20) NOT NULL,
  `LN` varchar(20) DEFAULT NULL,
  `DOB` date NOT NULL,
  `CountryOrigin` varchar(40) NOT NULL
);

/*done*/
CREATE TABLE `RATINGS` (
  `RatingNum` int NOT NULL,
  `ReviewText` varchar(200) DEFAULT NULL, /*done*/
  `MovieID` int NOT NULL,
  `ActorID` int DEFAULT NULL,
PRIMARY KEY (`RatingNum`,`MovieID`),
  FOREIGN KEY (`MovieID`) REFERENCES `MOVIE` (`MovieID`),
  FOREIGN KEY (`ActorID`) REFERENCES `MAIN_ACTORS` (`ActorID`)
);
/*done*/
CREATE TABLE `MAIN_DIRECTOR` (
  `DirectorID` int PRIMARY KEY,
  `FN` varchar(20) NOT NULL,
  `MN` varchar(20) DEFAULT NULL,
  `LN` varchar(20) DEFAULT NULL
);
/*done*/
CREATE TABLE `PLATFORM` (
  `PlatformID` int PRIMARY KEY,
  `PlatformName` varchar(40) NOT NULL,
  `Price` int NOT NULL,
  `DateAdded` date NOT NULL
);

/*done*/
CREATE TABLE `STARS` (
  `MovieID` int NOT NULL,
  `ActorID` int NOT NULL,
	PRIMARY KEY (MovieID, ActorID),
	FOREIGN KEY (MovieID) REFERENCES MOVIE(MovieID),
	FOREIGN KEY (ActorID) REFERENCES MAIN_ACTORS(ActorID)
);

/*done*/
CREATE TABLE `IS_ON` (
  `MovieID` int NOT NULL,
  `PlatformID` int NOT NULL,
	PRIMARY KEY (MovieID, PlatformID),
	FOREIGN KEY (MovieID) REFERENCES MOVIE(MovieID),
	FOREIGN KEY (PlatformID) REFERENCES PLATFORM(PlatformID)
);

/*done*/
CREATE TABLE `HAS` (
  `ActorID` int NOT NULL,
  `PlatformID` int NOT NULL,
	PRIMARY KEY (ActorID, PlatformID),
	FOREIGN KEY (ActorID) REFERENCES MAIN_ACTORS(ActorID),
	FOREIGN KEY (PlatformID) REFERENCES PLATFORM(PlatformID)
);
