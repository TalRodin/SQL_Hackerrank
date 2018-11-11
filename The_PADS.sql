select name from(
select concat(Name, '(', substr(Occupation,1,1),')') as name
      from OCCUPATIONS
union
select concat('There are a total of ', count(*),' ', lower(Occupation), 's.')  as name
      from OCCUPATIONS
      group by Occupation )sub
order by name;