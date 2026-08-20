create table population_backup as
select * from population;

delimiter $$
create procedure Add_uprban_population
(
in state text,
in R_popultion bigint
)
begin
update population_backup
set Rural_Population = R_popultion + Rural_Population
where State = state;
select * from population_backup;
end $$
delimiter ;

drop procedure Add_uprban_population;

call Add_uprban_population('Uttar Pradesh',8);