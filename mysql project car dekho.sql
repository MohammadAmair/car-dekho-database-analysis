@@ -0,0 +1,46 @@
SELECT * FROM cars.car_dekho;
use cars;

#1)READ DATA 
select* from car_dekho;

#2)TOTAL CARS: TO GET A COUNT OF TOTAL RECORDS
SELECT COUNT(*) FROM car_dekho;

#3)The manager asked the employee how many cars will be available in 2023?
select count(*) from car_dekho where year= 2023;

#4)The manager asked the employee how many cars is available in 2020,2021,2022
select count(*) from car_dekho where year= 2020; #74 record
select count(*) from car_dekho where year= 2021;#7
select count(*) from car_dekho where year= 2022;#7

#group by
select count(*)from car_dekho 
where year in (2020,2021,2022) group by year;

/*5)clint asked me to print the total of all cars by year. 
	I dont see all the details */
    select year, count(*) from car_dekho group by year;
    
    #6)clint asked to car dealer agent How many diesel cars will there be in 2020?
		select count(*) from car_dekho where year = "2020" and fuel = "Diesel";
        
	#7)clint requested a car dealer agent how many petrol cars will be there be in 2020?
    select count(*) from car_dekho where year = "2020" and fuel = "petrol";
    
    
    /*8)The manager told the employee to give a print all 
    the feul cars (petrol,diesel, and CNG) come by all year */
		select year, count(*) from car_dekho where fuel ="petrol" group by year;
        select year, count(*) from car_dekho where fuel ="diesel" group by year;
        select year, count(*) from car_dekho where fuel ="cng" group by year;
        
        #9)manager said there were more than 100 cars in given year, which year had more than 100 cars?
        select year , count(*) from car_dekho group by year having count(*)<50;
        
        #10)the manager said to the employee all cars count details between 2015 and 2023; we need a complete list.
        select count(*) from car_dekho where year between 2015 and 2023;
        
        #11)the manager said to the employee all cars details between 2015 to 2023 we need complete list.
        select * from car_dekho where year between 2015 and 2023;
