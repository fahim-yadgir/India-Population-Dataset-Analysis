create database Indian_population;
use Indian_population;

select * from population;

alter table population 
rename column `ï»¿Rank` to `Rank`;

alter table population
rename column `%_of_Total_Population` to `Total_Population`;

alter table population
rename column `Literacy_Rate_(%)` to `Literacy_Rate`;

alter table population
rename column `Rural Population` to `Rural_Population`;

alter table population
rename column `Urban Population` to `Urban_Population`;

alter table population
rename column `Area (km*km)` to `Area_(km*km)`;

alter table population
rename column `Density (1/km*km)` to `Density_(1/km*km)` ;

alter table population 
modify column `Density_(1/km*km)` int;

alter table population
rename column `Decadal_Growth_(%)` to `Decadal_Growth`;

alter table population
rename column `Gender Ratio` to `Gender_Ratio`;