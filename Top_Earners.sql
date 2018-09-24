select (salary*months) as Earnings, count(salary*months) as Num
from Employee
group by Earnings
order by Earnings desc
limit 1;