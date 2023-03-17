CREATE TABLE movies(
id serial primary key,
 title varchar(255) not null,
 genre varchar(255) not null,
 release_year int not null,
 score INTEGER not null, 
 unique(title)
);

DROP TABLE movies;

-- All films
SELECT * FROM movies;


-- All films ordered by rating descending
SELECT title, score FROM movies
ORDER BY score DESC;


-- All films ordered by release year ascending
SELECT title, release_year FROM movies
ORDER BY release_year ASC;


-- All films with a rating of 8 or higher
SELECT title, score FROM movies
WHERE score >= 8;


-- All films with a rating of 7 or lower
SELECT title, score FROM movies
WHERE score <= 7;


-- films released in 1990
SELECT title, release_year FROM movies
WHERE release_year = 1990;


-- films released before 2000
SELECT title, release_year FROM movies
WHERE release_year < 2000;


-- films released after 1990
SELECT title, release_year FROM movies
WHERE release_year > 1990;


-- films released between 1990 and 1999
SELECT title, release_year FROM movies
WHERE release_year BETWEEN 1990 AND 1999;


-- films with the genre of "SciFi"
SELECT title, genre FROM movies
WHERE genre = 'SciFi';


-- films with the genre of "Western" or "SciFi"
SELECT title, genre FROM movies
WHERE genre = 'Western' OR genre = 'SciFi';


-- films with any genre apart from "SciFi"
SELECT title, genre FROM movies
WHERE genre != 'SciFi';


-- films with the genre of "Western" released before 2000
SELECT title, genre, release_year FROM movies
WHERE genre = 'Western' AND release_year < 2000;


-- films that have the word "Matrix" in their title
SELECT title FROM movies
WHERE title LIKE '%Matrix%';


-- Extension 1

-- Return the average film rating
SELECT AVG(score) FROM movies;


-- Return the total number of films
SELECT COUNT(*) FROM movies;


-- Return the average film rating by genre
SELECT genre, score FROM movies;