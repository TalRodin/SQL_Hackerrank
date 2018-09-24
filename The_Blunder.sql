select ceiling((avg(salary)-avg(replace(salary,'0','')))) avg_Value_salary
from EMPLOYEES;