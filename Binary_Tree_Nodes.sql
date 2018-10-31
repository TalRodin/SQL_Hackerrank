select N,
       case when P is NULL then 'Root'
           when N in (select distinct P from BST) then 'Inner'
           else 'Leaf' end as tree
from BST
order by N asc










