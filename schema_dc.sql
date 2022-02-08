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

CREATE TABLE "uni_rank" (
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