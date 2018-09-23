select y.Continent, floor(avg(c.Population)) as Population
from country y
join city c
on c.CountryCode=y.Code
group by y.Continent;