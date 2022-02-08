-- Query to check successful load
SELECT * FROM cities;

SELECT * FROM universities;

SELECT * FROM uni_rank;

-- Join tables on university
SELECT universities.university, universities.country, uni_rank.rank, uni_rank.year
FROM universities
INNER JOIN uni_rank
ON universities.university = uni_rank.university;
