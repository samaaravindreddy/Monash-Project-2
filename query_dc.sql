-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/1kPrUK
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

---UNiRankingDc database

DROP TABLE IF EXISTS cities cascade;
DROP TABLE IF EXISTS universities cascade;
DROP TABLE IF EXISTS rank_score cascade;
DROP TABLE IF EXISTS uni_rank cascade;


CREATE TABLE "cities" (
    "city" VARCHAR(50)  NOT NULL,
    "country" VARCHAR(50) ,
    "region" VARCHAR(50)  
    
);

CREATE TABLE "universities" (
    
    "university" VARCHAR(100)   NOT NULL,
    "country" VARCHAR(50)   NOT NULL,
    "city" VARCHAR(50)   ,
    "region" VARCHAR(50)   NOT NULL
    
);

CREATE TABLE "uni_rank1" (
    "university" VARCHAR(100)   NOT NULL,
    "year" varchar   NOT NULL,
    "rank" INT   ,
    "score" float   NOT NULL
);


--- QS_Uni_Ranking_db
DROP TABLE IF EXISTS uni_rank;
DROP TABLE IF EXISTS uni_details;

-- Create Two Tables
CREATE TABLE uni_rank (
  
  year varchar,	
  rank varchar,
  score varchar
);

CREATE TABLE uni_details (
  
  university TEXT,
  city TEXT,
  country TEXT,
  region TEXT
);


--- import universities.csv
SELECT * FROM universities;


--- import uni_details.csv
SELECT * FROM uni_details;


--- import cities.csv
SELECT * FROM cities;

--- import uni_rank2021.csv into uni_rank
SELECT * FROM uni_rank;


--- import uni_rankcombined.csv into uni_rank1
SELECT * FROM uni_rank1;



-- Join tables on university
SELECT universities.university, universities.country, uni_rank1.rank, uni_rank1.year
FROM universities
INNER JOIN uni_rank1
ON universities.university = uni_rank1.university;

SELECT * FROM universities;
