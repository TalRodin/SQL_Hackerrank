select Start_Date, min(End_Date)
from 
    (select Start_Date 
     from Projects 
     where Start_Date not in (select End_Date from Projects))sub1,
    (select End_date 
     from Projects 
     where End_date not in (select Start_date from Projects))sub2                            
where Start_date < End_date
group by 1
order by datediff(Start_Date, min(End_Date)) desc, 1;