select c.name C_name
from city c
join country y
on c.CountryCode=y.Code
where y.continent in ('Africa')
order by C_name;