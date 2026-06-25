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