select round(sqrt(power((t1.c-t1.a),2)+power((t1.d-t1.b),2)),4) as Manh_dist
from (select min(LAT_N) as a, min(LONG_W) as b, max(LAT_N) as c, max(LONG_W) as d
from station) t1;