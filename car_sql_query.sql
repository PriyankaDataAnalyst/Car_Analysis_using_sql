--      Second Hand Car Dealer ---

-- 1. Read Car Data
use car_analysis_project

SELECT * FROM car_table;

-- count the no of rows 
select count(Name) from car_table

-- How many cars will be available in 2023
select count(*) from car_table
where year = 2023

-- How many cars is available in 2020,2021,2022.
SELECT 
    year, 
    COUNT(*) AS car_count
FROM 
    car_table
WHERE 
    year IN (2020, 2021, 2022)
GROUP BY 
    year
ORDER BY 
    year;
    
-- Client asked me to print the total all cars by year. 
select year,count(*) as Sales_of_cars from car_table
group by year

-- Client asked to car dealer agent How many diesel cars will there be in 2020?
select count(*) as Diesel_consumption_of_diesel_in_2020 from car_table where year = '2020' and fuel = 'Diesel'

-- client  requested a car dealer agent how many petrol cars will there be in 2020?
select  year, count(*) as Fuel_in_petrol from car_table where year = '2020' and fuel = 'petrol'

-- The manager told the employee to give a print ALL the fuel cars ( petrol, diesel and CNG) come by all year?
select year, fuel,count(*) as Fuel_type from car_table
where fuel in ('petrol', 'diesel', 'CNG')
group by year, fuel
order by year

-- manager said there were more than 100 cars in a given year, which year had more than 100 cars?

SELECT 
    year,
    COUNT(*) AS total_cars
FROM 
    car_table
GROUP BY 
    year
HAVING 
    COUNT(*) > 100
ORDER BY 
    year;

-- The manager said to the employee All cars count details between 2015 and 2023? we need a complete list?

select year, count(name) as Count_of_cars 
from car_table
where year between  2015 and 2023
group by year
order by year ;

-- the manager sasid to the employee All cars details between 2015 to 2023 we need complete list?
SELECT *
FROM car_table
WHERE year BETWEEN 2015 AND 2023
ORDER BY year;


