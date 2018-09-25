select * from (select city, length(city) Len
from station
where length(city)=(select min(table_1.Len) as Min_Len_city
from (select city, LENGTH(city) Len
             from station                     
             order by city) table_1)
order by city limit 1)table_2
union
select * from (select city, length(city) Len
from station
where length(city)=(select max(table_1.Len) as Max_Len_city
from (select city, LENGTH(city) Len
             from station                     
             order by city) table_1)
order by city limit 1)table_2;