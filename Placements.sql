select table_3.N from
(select table_1.name N, table_1.Salary S, table_2.Salary_friend S_F from
(select s.ID id, s.name as name, p.Salary as Salary
from Students s
join Friends f
on s.ID=f.ID
join Packages p
on p.ID=f.ID)table_1
join 
(select s.ID id, s.Name, f.Friend_ID, p.Salary as Salary_friend
from Students s
join Friends f
on s.ID=f.ID
join Packages p
on p.ID=f.Friend_ID)table_2
where table_1.id=table_2.id)table_3
where table_3.S_F>table_3.S
order by table_3.S_F