select round(LONG_W,4) as LONG_W
from STATION
where LAT_N = (select max(LAT_N)
                  from STATION
                 where LAT_N<137.2345);