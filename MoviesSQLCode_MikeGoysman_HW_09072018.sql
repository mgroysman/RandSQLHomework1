/* Author - Mikhail Groysman, CUNY Master of Data Science Student 
   Date 9/8/2018 
   2nd week homework for 2018 Fall Term Acquisition and Management DATA 607 
   Movie reviews DB in MySQL */


CREATE DATABASE Movies;

DROP TABLE IF EXISTS tblPeople;

CREATE TABLE tblPeople
(
  People_id int PRIMARY KEY,
  FName varchar(50) NOT NULL, 	/* First name */
  LName varchar(50) NOT NULL, 	/* Last name */
  Relation varchar(50) NULL, 	/* Father, mother, friend, etc */
  Gender varchar(1) NOT NULL, 	/* F - female, M - Male */
  Age int NULL,
  RDate Date NOT NULL,          /* Date of movie rating */
  SMethod varchar(50) NOT NULL  /* Survey method - in person, phone, email, etc */
);

INSERT INTO tblPeople ( People_id, FName, LName, Relation, Gender, Age, RDate, SMethod ) VALUES ( 1, 'Alex', 'Groysman', 'Father', 'M', 72, '2018-09-07', 'Phone');
INSERT INTO tblPeople ( People_id, FName, LName, Relation, Gender, Age, RDate, SMethod ) VALUES ( 2, 'Luda', 'Smirnova', 'Mother', 'F', 73, '2018-09-07', 'Phone');
INSERT INTO tblPeople ( People_id, FName, LName, Relation, Gender, Age, RDate, SMethod ) VALUES ( 3, 'Ok', 'Sunwoo', 'Wife', 'F', 45, '2018-09-07', 'In person');
INSERT INTO tblPeople ( People_id, FName, LName, Relation, Gender, Age, RDate, SMethod ) VALUES ( 4, 'Anna', 'Groyman', 'Sister', 'F', 47, '2018-09-08', 'Email');
INSERT INTO tblPeople ( People_id, FName, LName, Relation, Gender, Age, RDate, SMethod ) VALUES ( 5, 'Galina', 'Groysman', 'Sister', 'F', 39, '2018-09-08', 'Phone');
INSERT INTO tblPeople ( People_id, FName, LName, Relation, Gender, Age, RDate, Smethod ) VALUES ( 6, 'Anatoly', 'Petrikovsky', 'Brother-in-law', 'M', 52, '2018-09-08', 'Texting');


SELECT * FROM tblPeople;

DROP TABLE IF EXISTS tblMovies;

CREATE TABLE tblMovies
(
  Movie_id int PRIMARY KEY,
  MName varchar(50) NOT NULL, 		/* Movie name */
  Director varchar(50) NOT NULL, 	/* Movie director */
  RYear int not NULL, 				/* Release year */
  Country varchar(50) NOT NULL 		/* Country of origin */
);

INSERT INTO tblMovies ( Movie_id, MName, Director, RYear, Country ) VALUES ( 1, 'Crazy Rich Asians', 'Jon M. Chu', 2018, 'USA');
INSERT INTO tblMovies ( Movie_id, MName, Director, RYear, Country ) VALUES ( 2, 'Oceans 8', 'Gary Ross', 2018, 'USA');
INSERT INTO tblMovies ( Movie_id, MName, Director, RYear, Country ) VALUES ( 3, 'Avangers: Infinity War', 'Anthony Russo', 2018, 'USA');
INSERT INTO tblMovies ( Movie_id, MName, Director, RYear, Country ) VALUES ( 4, 'Deadpool 2', 'David Letch', 2018, 'USA');
INSERT INTO tblMovies ( Movie_id, MName, Director, RYear, Country ) VALUES ( 5, 'Mission: Impossible - Fallout', 'Christopher McQuarrie', 2018, 'USA');
INSERT INTO tblMovies ( Movie_id, MName, Director, RYear, Country ) VALUES ( 6, 'Black Panther', 'Rayn Coogler', 2018, 'USA');


SELECT * FROM tblMovies;

DROP TABLE IF EXISTS tblRating;

CREATE TABLE tblRating
(
  Rate_id int PRIMARY KEY,
  People_id int, /* Foreign key */
  Movie_id int,  /* Foreign key */
  Rating int NOT NULL 		/* 1-5 rating, 0 - did not see the movie */
);

INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 1, 1, 1, 3);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 2, 1, 2, 0);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 3, 1, 3, 0);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 4, 1, 4, 0);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 5, 1, 5, 2);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 6, 1, 6, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 7, 2, 1, 0);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 8, 2, 2, 0);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 9, 2, 3, 0);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 10, 2, 4, 0);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 11, 2, 5, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 12, 2, 6, 0);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 13, 3, 1, 4);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 14, 3, 2, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 15, 3, 3, 0);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 16, 3, 4, 0);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 17, 3, 5, 4);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 18, 3, 6, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 19, 4, 1, 0);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 20, 4, 2, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 21, 4, 3, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 22, 4, 4, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 23, 4, 5, 0);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 24, 4, 6, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 25, 5, 1, 0);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 26, 5, 2, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 27, 5, 3, 4);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 28, 5, 4, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 29, 5, 5, 1);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 30, 5, 6, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 31, 6, 1, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 32, 6, 2, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 33, 6, 3, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 34, 6, 4, 5);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 35, 6, 5, 4);
INSERT INTO tblRating ( Rate_id, People_id, Movie_id, Rating) VALUES ( 36, 6, 6, 2);

SELECT * FROM tblRating;

/* How many movies each person have seen */

SELECT FName, LName, count(Rate_id) as CMovies
FROM tblRating as A INNER JOIN tblPeople as B ON A.People_ID=B.People_ID
WHERE Rating <> 0
GROUP BY FName, LName;

/* Anatoly has seen all movies, while Luda has only seen 1 movie */

/* Average number of movies has been seen by a person */

SELECT AVG(CMovies) as AMovies 
FROM
(
SELECT People_Id, Count(Rate_id) as CMovies
FROM tblRating 
WHERE Rating <> 0
GROUP BY People_ID) AS A;

/* Average number of movies seen by people was 3.8 */

/* Average rating by movie */

SELECT MName, AVG(Rating) as ARating
FROM tblRating as A INNER JOIN tblMovies as B ON A.Movie_ID=B.Movie_ID
WHERE Rating <> 0
GROUP BY MName;

/* Mission impossible got the lowest ranking of 3.2, while Ocean 8 and Deadpool 2 got the higest possible of 5 */

/* Combining 3 tables in one file to prepare a file to be moved to R */

CREATE TABLE COMBINED AS
SELECT Rate_ID, C.Movie_ID, MName, Director, RYear, Country, C.People_ID,
FName, LName, Relation, Gender, Age, RDate, SMethod, Rating
FROM tblPeople as A INNER JOIN tblMovies as B INNER JOIN tblRating as C ON A.People_ID=C.People_ID AND B.Movie_ID=C.Movie_ID;


SELECT * FROM COMBINED;

/* Creating CSV file */

SELECT * INTO OUTFILE 'C:/Dataflights/MoviesOut.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n'
FROM COMBINED
ORDER BY Rate_ID;
