--vishnu meduri--

--Lab 5-- 

--02/19/2014--


--1.

select a.city 
from orders o
join customers c on c.cid=o.cid
join agents a    on a.aid=o.aid
where c.name='Basics';

--2.

select distinct o1.pid
from products p
join orders o    on p.pid=o.pid
join customers c on c.cid=o.cid
join orders o1   on o.aid=o1.aid
where c.city='Kyoto'
order by o1.pid;

--3.

select name
from customers
where cid not in (select cid 
                  from orders);
--



--4.

select c.name
from customers c
left join orders o on o.cid=c.cid
where o.cid is null;

--5.

select distinct c.name,a.name
from customers c
join agents a on a.city=c.city
join orders o on o.aid=a.aid
where c.city=a.city and o.aid=a.aid and o.cid = c.cid;

--6.

select distinct c.name,a.name
from customers c
join agents a on c.city = a.city;


--7.

select distinct c.name,c.city
from customers c
where c.city in ( select city 
                  from products
                  group by city
                  order by count(quantity) limit 1);
--


