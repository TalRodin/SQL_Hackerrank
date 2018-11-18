select submission_date,

(select count(distinct hacker_id)   
 from Submissions s  
 where s.submission_date = t1.submission_date 
 and
(select count(distinct s1.submission_date) 
 from Submissions s1   
 where s1.hacker_id = s.hacker_id and s1.submission_date < t1.submission_date) = datediff(t1.submission_date , '2016-03-01')),

(select hacker_id  
 from Submissions s 
 where s.submission_date = t1.submission_date 
 group by hacker_id 
 order by count(submission_id) desc , hacker_id 
 limit 1) as h_id,
 
(select name 
 from Hackers 
 where hacker_id = h_id)

from 
(select distinct submission_date 
 from Submissions)t1

group by submission_date