
use cars;
-- Read Cars data --
select * from car_dekho;

-- Total Cars: To get a count of total records --
select count(*) from car_dekho;

-- The manager asked the employee How many cars were availabe in 2023 --
select 
count(*) 
from car_dekho
where year = 2023;

-- The manager asked the employee How many cars were available in 2020, 2021, 2022 --
select 
year, count(*) 
from car_dekho
where year in (2020, 2021, 2022)
group by year;

-- Client asked me to print the total of all cars by year. I don't see all the details --
select year, count(*) as 'total_cars'
from car_dekho
group by year
order by year asc;

-- Client asked to car dealer agent How many diesel cars were there in 2020 --
select count(*) as 'total diesel cars'
from car_dekho
where fuel like 'Diesel' and year = 2020;

-- client requested a car dealer agent how many petrol were available in 2020 --
select count(*) as 'total petrol cars'
from car_dekho
where fuel like 'Petrol' and year = 2020;


-- The manager told the employee to give a print all the fuel cars (petrol, diesel, and cng) come by all year --
select year, fuel, count(*)
from car_dekho
where fuel in('Petrol', 'Diesel', 'CNG')
group by year, fuel
order by year asc;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars --
select year, count(*) as 'total_cars'
from car_dekho
group by year
having total_cars > 100
order by year asc;

-- The manager said to the employee all cars count details between 2015 and 2023 we need a complete list  --
select year, count(*)
from car_dekho
where year between 2015 and 2023
group by year
order by year asc;

-- The manager said to the employee all cars details between 2015 and 2023 --
select * 
from car_dekho
where year between 2015 and 2023;