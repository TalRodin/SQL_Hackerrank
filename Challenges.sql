select h.hacker_id, h.name, count(c.hacker_id) as count_num_c
from Hackers h
join Challenges c
on h.hacker_id=c.hacker_id
group by 1,2
having count_num_c = (select max(t1.c)
                       from (select count(hacker_id) as c
                             from Challenges
                            group by hacker_id
                            order by hacker_id) t1)                            
                        or
         count_num_c in ( select t2.c from (select count(*) as c
                         from Challenges
                        group by hacker_id)t2
                        group by t2.c
                        having count(t2.c)=1)
order by 3 desc, 1