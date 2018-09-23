select CITY 
from STATION 
where not (CITY like '%a' or  CITY  like '%e' or CITY  like '%i' or CITY  like '%o' or CITY  like '%u')
group by CITY;