create database cricket;
use cricket;
select * from virat;
alter table virat rename column Column1 to City;
select * from virat order by score desc limit 10;
select * from virat where `Strike Rate` is null;

select City,count(score)as no_of_centuries,
sum(score)as total_city_score ,
avg(score)as avg_city_score from virat 
group by City
order by 
total_city_score desc;

select Against, sum(score) as total_score 
from virat 
group by Against
order by total_score desc; 

select Format, count(score)as no_of_centuries,
sum(score)as total_city_score ,avg(score)as avg_city_score from virat 
group by format;
select max(score) as sec_highest_score from virat where 
score<(select max(score)as max_score from virat);

select  distinct score from virat v1 where 5 =(select count(distinct score )from virat v2
where v2.score>v1.score);

select 
Date,
Score,
sum(score) over (order by date)as running_total,
avg(score) over (order by date rows between 2 preceding and current row)as running_avg 
from 
virat;
select sum(Score) from virat;

select `Strike Rate`,count(*)
from virat group by `Strike Rate`
having count(*)>1;

create view order_date as
select
year(str_to_date(date,"%d-%m-%Y"))as year,
month(str_to_date(date,"%d-%m-%Y"))as month,
day(str_to_date(date,"%d-%m-%Y"))as day
from virat;
select * from order_date;

alter table virat drop column captain;

alter table virat drop column `H/A`;

alter table virat drop column `Out/Not Out`;
select * from virat;