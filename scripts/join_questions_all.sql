-- 1. Give the name, release year, and worldwide gross of the lowest grossing movie.
-- SELECT 
-- 	s.movie_id as name, 
-- 	s.release_year, 
-- 	r.worldwide_gross
-- FROM specs AS s
-- LEFT JOIN revenue as r
-- 	ON s.movie_id = r.movie_id
-- ORDER BY 3 asc
-- LIMIT 1


-- 2. What year has the highest average imdb rating?
-- SELECT
-- 	s.release_year,
-- 	ROUND(AVG(r.imdb_rating),2) AS avg_rating
-- FROM specs as s
-- LEFT JOIN rating as r
-- 	ON s.movie_id = r.movie_id
-- GROUP BY 1
-- ORDER BY 2 desc
-- LIMIT 1
-- Answer: 1991

-- 3. What is the highest grossing G-rated movie? Which company distributed it?
-- SELECT 
-- 	s.film_title,
-- 	s.mpaa_rating,
-- 	r.film_budget,
-- 	d.company_name
-- FROM specs AS s
-- LEFT JOIN revenue AS r
-- 	ON s.movie_id = r.movie_id
-- LEFT JOIN distributors AS d
-- 	ON s.domestic_distributor_id = d.distributor_id
-- WHERE s.mpaa_rating = 'G'
-- ORDER BY 3 DESC
-- Answer: Toy Story 3, Cars 2, Toy Story 4, Monsters University 


-- 4. Write a query that returns, for each distributor in the distributors table, the distributor name and the number of movies associated with that distributor in the movies table. Your result set should include all of the distributors, whether or not they have any movies in the movies table.
-- SELECT 
-- 	d.company_name,
-- 	COUNT(s.*) AS count_movies
-- FROM distributors AS d
-- LEFT JOIN specs AS s
-- 	ON d.distributor_id = s.domestic_distributor_id
-- GROUP BY 1
-- ORDER BY 2 DESC


-- 5. Write a query that returns the five distributors with the highest average movie budget.
-- SELECT
-- 	d.company_name,
-- 	ROUND(AVG(r.film_budget), 2) AS avg_movie_budget
-- FROM distributors AS d
-- FULL OUTER JOIN specs AS s
-- 	ON d.distributor_id = s.domestic_distributor_id
-- FULL OUTER JOIN revenue AS r
-- 	ON s.movie_id = r.movie_id
-- GROUP BY 1
-- HAVING ROUND(AVG(r.film_budget), 2) IS NOT NULL
-- ORDER BY 2 DESC
-- LIMIT 5
-- Question: How can I filter out the NULL avg_movie_budget values? WHERE or HAVING? Can I not use an alias in having?


-- 6. How many movies in the dataset are distributed by a company which is not headquartered in California? Which of these movies has the highest imdb rating?
SELECT
FROM
WHERE   
-- lkasjf lkjsdflk jasdf 


-- 7. Which have a higher average rating, movies which are over two hours long or movies which are under two hours?
