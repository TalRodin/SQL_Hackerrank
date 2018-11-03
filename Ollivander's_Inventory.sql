select w.id, wp.age, w.coins_needed, w.power
from Wands w join Wands_Property wp on w.code=wp.code
where wp.is_evil!=1 and w.coins_needed=(select min(Wands.coins_needed) from Wands 
                                        inner join Wands_Property on          Wands.code=Wands_Property.code where Wands_Property.age=wp.age and Wands.power=w.power)
order by 4 desc, 2 desc