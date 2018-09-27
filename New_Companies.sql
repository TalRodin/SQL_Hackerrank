select C.company_code, C.founder, count(distinct L.lead_manager_code) as L,count(distinct S.senior_manager_code) as S, count(distinct  M.manager_code) as M, count(distinct  E.employee_code) as E
from Company C
join Lead_Manager L
on C.company_code=L.company_code
join Senior_Manager S
on L.Lead_Manager_code=S.Lead_Manager_code
join Manager M
on S.Senior_Manager_Code=M.Senior_Manager_Code
join Employee E
on M.Manager_Code=E.Manager_Code
group by C.company_code,C.founder
order by C.company_code;