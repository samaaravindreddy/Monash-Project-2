# Monash-Project-2
MONU Project2

Project subject
QS World University Rankings 2017-2022+

Dataset source 
https://www.kaggle.com/prasertk/qs-world-university-rankings-2021?select=QS+World+University+Rankings+combined.csv

Team members

Anh Huong<br />
Daniela Cornea<br />
Aravind Sama<br />
Mino Peric<br />

Files allocation<br />
Anh Huong QS World University Rankings 2022.csv<br />
Daniela Cornea QS World University Rankings 2021.csv<br />
Aravind Sama QS World University Rankings 2020.csv<br />
Mino Peric QS World University Rankings 2019.csv<br />

Project plan and development<br />

Each member of the team will work with one CSV file, drop two column logo and retain year, rank_display, university, score, country, city and region.

Replace NAN values in "score" column with zero

For the "rank_display" column, replace NAN values with zero, retain the lower rank and drop the additional information such as "+" or anything after "-" when the rank_display contains rages

While analysing the data in Excel by using pivot table, it can be noted that, although some universities appear in all years, there are others that only have data in some of the years with an increased number in 2022. For example, there are 1018 universities in the 2019 CSV file and 1300 in 2022.<br />

Possible approaches for the database:<br />
1. one table for each year with all specific data - advantage: easy access of specific year's data, disadvantage: no separation on ranking or universities.<br />
2. one table with universities that will contain university, country, city, region and a primary key for university ID, and one table for ranking by year.  
Advantage: separate table for universities that will reduce memory usage <br />
3. one table for universities as above, and one table for each year ranking and score. Advantage: easy to maintain ranking data by year, have separate table for universities, reduce the memory used as the universities appear in one table, easy access when analysisng specific year or review the universities list, easy to separate the data when various people work on the same project.<br />
4. one table for universities, one for ranking and score
 

