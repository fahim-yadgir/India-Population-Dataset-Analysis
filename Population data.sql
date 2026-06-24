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

SET SQL_SAFE_UPDATES = 0;

update population
set Males = replace(Males,',','');

alter table population
modify Males bigint;

update population
set females = replace(females,',','');

alter table population
modify column females bigint;

update population
set Population = replace(Population,',','');

alter table population
modify column Population bigint;

update population
set Rural_Population = replace(Rural_Population,',','');

alter table population
modify column Rural_Population bigint;

update population
set Urban_Population = replace(Urban_Population,',','');

alter table population
modify column Urban_Population bigint;

update population
set `Area_(km*km)` = replace(`Area_(km*km)`,',','');

alter table population
modify column `Area_(km*km)` bigint;

update population
set `Density_(1/km*km)` = replace(`Density_(1/km*km)`,',','');

alter table population
modify column `Density_(1/km*km)` bigint;

update population
set Decadal_Growth = replace(Decadal_Growth,'%','')

