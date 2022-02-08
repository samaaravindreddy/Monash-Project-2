------------ Drop table if exists ------------
DROP TABLE IF EXISTS uni_rank;
DROP TABLE IF EXISTS uni_details;
----------------------------------------------

--------- Create tables to hold data ---------
CREATE TABLE uni_rank (
  id INT PRIMARY KEY,
  year INT,	
  rank INT,
  score INT
);

CREATE TABLE uni_details (
  id INT PRIMARY KEY,
  university TEXT,
  city TEXT,
  country TEXT,
  region TEXT
);
----------------------------------------------

------ Execute queries to check data load ------
select * from uni_rank;
select * from uni_details;

select uni_rank.year, uni_rank.rank, uni_rank.score, uni_details.university, uni_details.city, uni_details.country, uni_details.region
from uni_details
inner join uni_rank
on uni_details.id = uni_rank.id;
----------------------------------------------