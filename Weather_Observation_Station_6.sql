select CITY
from STATION
where CITY like ('A%') or CITY LIKE ('E%') or CITY like ('I%') or CITY like ('O%') or CITY like ('U%')
group by CITY;