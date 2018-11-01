select max(D), max(P), max(S), max(A)
from
    (select case when Occupation = 'Doctor' then name end as D
    , case when Occupation = 'Professor' then name end as P
    , case when Occupation = 'Singer' then name end as S
    , case when Occupation = 'Actor' then name end as A
    , rank() over (partition by Occupation order by Name) as rank
    from Occupations)sub
group by rank