
1) select * from subjects order by subject;

2) select * from subjects order by location;



3) select * from books where title = 'Little Women';

4) select * from books where title like '%Python';

5) select * from subjects where location ='Main St' order by subject;



6) select title from books join subjects on subjects.id = books.subject_id where subjects.subject = 'Computers';

7) select title, first_name, last_name, subject from books join authors on books.author_id =authors.id join subjects on books.subject_id=subjects.id;

8) select books.title, stock.cost from books join editions on books.id=editions.book_id join stock on editions.isbn=stock.isbn order by stock.cost desc; 


9)select books.title, editions.isbn, publishers.name, stock.cost
from books join editions on books.id=editions.book_id
join stock on editions.isbn=stock.isbn join publishers on publishers.id=editions.publisher_id where books.title = "Dune";


10)select c.first_name, c.last_name, s.ship_date, b.title
from customers c 
join shipments s on s.customer_id=c.id
join editions e on e.isbn=s.isbn
join books b on b.id=e.book_id
order by s.ship_date;

11) select count(*) from books;

12) select count(location) from subjects; 

13) select location, count(location) from subjects group by location;
    select count(DISTINCT location) from subjects;

14) select books.id, books.title, count(editions) FROM books join editions on books.id=editions.book_id group by id; 