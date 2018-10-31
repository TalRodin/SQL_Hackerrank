select sub.h_id, sub.h_name, sum(sub.Max_score) as Score
from (select h.hacker_id as h_id, h.name as h_name, s.challenge_id as ch_id, max(s.score) as Max_score
from Submissions s
join Hackers h
on h.hacker_id=s.hacker_id
group by 1,2,3)sub
group by 1,2
having Score>0
order by Score desc, sub.h_id