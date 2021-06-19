select b.title, p.name
from books as b
inner join publisher as p
on p.id = b.publisher
where p.country = 'UK';
