select DISTINCT CITY
from STATION
where substr(CITY, 1, 1) not in ('A','E','I','O','U');