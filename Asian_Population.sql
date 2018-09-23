select sum(c.population) as population
from city c
join country y
on c.CountryCode=y.Code
where y.CONTINENT in ('Asia');