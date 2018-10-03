select case when g.Grade>7 then s.Name else NULL end as name, g.Grade as grade, s.Marks as mark
from Students s, Grades g
where s.Marks between g.Min_mark and g.Max_mark
order by 2 desc, 1, 3;