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