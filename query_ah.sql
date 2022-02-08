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