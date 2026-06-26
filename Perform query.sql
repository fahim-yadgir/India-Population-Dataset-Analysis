select * from population;

select state , Population
from population;

select * 
from population
where Literacy_Rate > 80;

select state ,max(Population)as max_Population
from population
group by state
limit 1;

select count(state)as state_counts
from population;

select state
from population
where Urban_Population > Rural_Population;

select state
from population
where State like 'M%';

select state,max(`Density_(1/km*km)`)as top_5_densely
from population
group by state
order by top_5_densely desc
limit 5;

select * from population
where State like 'O%';

select State,Capital
from population
where Total_Population_cover > 6;

select State , avg(Literacy_Rate)as avg_Literacy_Rate
from population
group by State;

select State,Urban_Population
from population
where Urban_Population > (select avg(Urban_Population)*0.5 from population);

select count(*)as `Literacy_Rate_above_40%`
from population
where Literacy_Rate > (select avg(Literacy_Rate)*0.4 from population);

select state,Urban_Population as top_5_Urban_Population
from population
order by top_5_Urban_Population desc
limit 5;

select state,Rural_Population as top_5_Rural_Population
from population
order by top_5_Rural_Population desc
limit 5;

select avg(population)
from population;


select state , Population
from population
where population > (select avg(population) from population);

select state , Literacy_Rate
from population
where Literacy_Rate < (select avg(Literacy_Rate) from population);

select avg(Literacy_Rate)
from population;

select state,
		capital,
        population,
        round((males * 100.0 / population),2)as male_percentage,
        round((females * 100.0 / population),2)as female_percentege
from population;

select State 
from population
where Urban_Population > Rural_Population;

select state,
		capital,
        population,
        `Area_(km*km)`,
        round(population / `Area_(km*km)`,2) as calculated_density
from population;

select state ,literacy_rate
from population 
where literacy_rate = (select max(Literacy_Rate)as highest_Literacy_Rate)
order by literacy_rate desc
limit 1;

select state , literacy_rate
from population
where literacy_rate = (select min(Literacy_Rate)as minimum_Literacy_Rate)
order by literacy_rate desc
limit 1;

select state , Decadal_Growth
from population
where Decadal_Growth > (select avg(Decadal_Growth)*0.2 from population);

select state , Decadal_Growth
from population
where Decadal_Growth > 20;

select state,
case
when Literacy_Rate > 90 then 'Excellent'
when Literacy_Rate between 80 and 90 then 'Good'
when Literacy_Rate < 80 then 'Needs Improvement'
end as Categorize_Literacy_Rate
from population;

select state , avg(population)
from population
group by state;

select max(`Density_(1/km*km)`)as `max_Density_(1/km*km)`,min(`Density_(1/km*km)`)as `min_Density_(1/km*km)`
from population;

select sum(Urban_Population)as total_Urban_Population_population
from population;

select sum(Rural_Population)as total_Urban_Population_population
from population;