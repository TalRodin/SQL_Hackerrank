select round(max(LAT_N), 4) as LAT_N
from station
where LAT_N<137.2345;