select l from (
select cast(LAT_N as decimal(10,4)) as l, 
ROW_NUMBER() OVER (order by LAT_N asc ) as row_num
from STATION) sub
where row_num=(select ceiling(count(LAT_N)/2.0) from station)