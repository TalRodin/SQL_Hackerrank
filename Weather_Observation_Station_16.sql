select round(min(LAT_N),4) as LAT_N
from station 
where LAT_N>38.7780;