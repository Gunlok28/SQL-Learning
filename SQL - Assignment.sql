use etlclass;
/*Retrieve the names of all the Bollywood
movies which are of drama genre in the
dataset.*/
select * from movies_sql;
-- 1.Retrieve the names of all the Bollywood movies of Amir Khan in the dataset.
select Lead_Star,Movie_name from movies_sql where Lead_Star='Aamir Khan';
-- 2.Retrieve the names of all the Bollywood movies which are directed by RamGopal Verma in the dataset.
select Director,Movie_name from movies_sql where Director='Ram Gopal Verma';
-- 3.Retrieve the names of all the Bollywood movies which have been released over more than 1000 number of screens in the dataset.
select Movie_name,Number_of_Screens from movies_sql where Number_of_Screens>1000;
-- 4.Retrieve the names of all the Bollywood movies which have generated Revenue(INR) more than 700000000 in the dataset.
select Movie_name,Revenue from movies_sql where Revenue>700000000;
-- 5.Retrieve the names of all the Bollywood movies which have budget less than 1cr in the dataset.
select Movie_name,Budget from movies_sql where Budget<10000000;
-- 6.Retrieve the names of all the Bollywood movies which are flop in the dataset.(flop=revenue – budget)
SELECT movie_name, (revenue - budget) AS flop FROM movies_sql where (revenue - budget)<0;
-- 7.Retrieve the names and profit of all the Bollywood movies in the dataset.(profit=revenue – budget)
SELECT movie_name, (revenue - budget) AS profit FROM movies_sql where (revenue - budget)>0;
-- 8.Retrieve the names and loss of all the Bollywood movies in the dataset.(loss=revenue – budget)
SELECT movie_name, (revenue - budget) AS loss FROM movies_sql;
-- 9. Retrieve the names of all the Bollywood movies which have been released on holidays in the dataset.
select movie_name from movies_sql where Release_Period='holiday';
-- 10. Retrieve the names of all the Bollywood movies which have lead star as Akshay Kumar and directed by Priyadarshan in the dataset.
select movie_name FROM movies_sql where lead_star = 'Akshay Kumar' and director = 'Priyadarshan';
-- 11. Retrieve the names of all the Bollywood movies starting with ‘a’ in the dataset.
select movie_name from movies_sql where movie_name like 'a%';
-- 12. Retrieve the names of all the Bollywood movies ending with ‘a’ in the dataset.
select movie_name from movies_sql where movie_name like '%a';
-- 13. Retrieve the names of all the Bollywood movies having ‘a’ at second place of the name in the dataset.
select movie_name from movies_sql where movie_name like '_a%';
-- 14. Retrieve the names of all the Bollywood movies having music of amit trivedi the dataset.
select movie_name FROM movies_sql where Music_Director = 'amit trivedi';
-- 15. Retrieve the names of all the comedy movies of Akshay Kumar in the dataset.
select movie_name FROM movies_sql where lead_star = 'Akshay Kumar' and genre = 'comedy';
-- 16. Retrieve the names of movies and star name starring khan in the dataset.
select movie_name,Lead_Star from movies_sql where Lead_Star like '%khan%';
-- 17. Retrieve all the information of movies race and race2 in the dataset.
Select * from movies_sql where movie_name in ('race', 'race 2');
-- 18. Retrieve the names of all the thriller Bollywood movies in the dataset.
select movie_name FROM movies_sql where genre = 'thriller';
-- 19. Retrieve the names and budget of all the Bollywood movies according to the highest budget to lowest budget in the dataset.
select movie_name,budget from movies_sql order by budget desc;
-- 20. Retrieve the names and budget of top 5 Bollywood movies with highest budget in the dataset.
select movie_name,budget from movies_sql order by budget desc limit 5;
-- 21. Retrieve the names of top 10 Bollywood movies with highest revenue generation in the dataset.
select movie_name from movies_sql order by revenue desc limit 10;
-- 22. Retrieve the names of top 5 movies of salman khan in the dataset.
select movie_name from movies_sql where Lead_Star='Salman Khan' limit 10;
-- 23. Retrieve the names of top 5 floped movies in the dataset.
SELECT movie_name, (revenue - budget) AS flop FROM movies_sql limit 5;
-- 24. Retrieve the names of top 5 hit movies in the dataset.
SELECT movie_name, (revenue - budget) AS hit from movies_sql order by (revenue - budget) desc limit 5;
-- 25. Which is the second movie released on maximum screens.
select movie_name from movies_sql order by Number_of_Screens desc limit 1,1;
-- 26. Which is the 10th movies with highest budget.
select movie_name from movies_sql order by budget desc limit 9,1;
-- 27. Which is the 2nd movie of Amitabh Bachchan with highest budget.
select movie_name from movies_sql where lead_star = 'Amitabh Bachchan' order by budget desc LIMIT 1,1;
-- 28. Which are the flopped movies of Akshay Kumar.
SELECT movie_name FROM movies_sql WHERE lead_star = 'Akshay Kumar' order by (revenue - budget);
-- 30. With which director Sharukh Khan have given the biggest hit movie .
SELECT director, (revenue - budget) AS hit FROM movies_sql WHERE lead_star = 'Sharukh Khan' ORDER BY (revenue - budget) DESC LIMIT 1;