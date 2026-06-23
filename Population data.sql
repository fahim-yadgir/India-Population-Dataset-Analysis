create database Indian_population;
use Indian_population;

select * from population;

alter table population 
rename column `ï»¿Rank` to `Rank`;

alter table population
rename column `% of Total Population` to `%_of_Total_Population`;

alter table population
rename column `Literacy Rate (%)` to `Literacy_Rate_(%)`;

alter table population
rename column `Rural Population` to `Rural_Population`;

alter table population
rename column `Urban Population` to `Urban_Population`;

alter table population
rename column `Area (km*km)` to `Area_(km*km)`;

alter table population
rename column `Density (1/km*km)` to `Density_(1/km*km)` ;

alter table population
rename column `Decadal Growth (%)` to `Decadal_Growth_(%)`;

alter table population
rename column `Gender Ratio` to `Gender_Ratio`;