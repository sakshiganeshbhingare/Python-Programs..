use classicmodels;
show tables;
select distinct city
from customers;

Describe customers;
select customername, city
from customers;

show tables;

select database();

select *
from customers
where city = 'france';

select customerNumber, customerName, city
from customers;

select customerName, phone
from customers;

select customerName
from customers;

select customernumber, city,country
from customers;

select distinct city
from customers;

select *
from customers
where country ='USA';

select*
from customers
where country ='france';

select customernumber, city
from customers
where country ='france';


select*
from customers
where creditLimit>50000;

select*
from customers
where creditLimit<50000;

select*
from customers
where creditLimit='USA'
AND creditlimit>50000;

select customername,phone
from customers
where country='USA';

select customerNumber,customerName, creditLimit
from customers
where country='france';

select*
from customers
where country='france'AND creditLimit>100000;

select customername,phone
from customers
where country='USA';

select customerName, city,phone
from customers
where country='france' AND creditlimit>50000;

select customerNumber,customerName,city
from customers
where country='USA' AND creditLimit>50000;

select customerName, customerNumber,country
from customers
where creditLimit<200000 AND creditLimit>100000;

select customerNumber,customerName, country
from customers
where country='UK' AND 'USA';

select*
from customers
where not country='UK';

select*
from customers
order by creditLimit;

select*
from customers
order by creditLimit desc;

select*
from customers
order by creditLimit asc;

select*
from products
order by buyPrice desc;

select*
from customers
order by 'UK' desc;

use classicmodels;
select*
from products
where productline='classic cars' and msrp>20 and msrp<50
order by MSRP asc;

select*
from customers
where state is not null;

select*
from customers
where state is null;

select*
from customers
limit 5;

select*
from customers
where country='USA'
order by creditLimit desc
limit 6;

select*
from customers
where country='USA'
order by creditLimit desc
limit 3,2;

select*
from customers
where country='USA'
order by creditLimit desc
limit 2 offset 3;

select*
from customers
order by creditLimit desc
limit 4;

select*
from customers
order by creditLimit desc
limit 5;

select*
from customers
order by creditLimit desc
limit 0 offset 6;

select*
from customers
where country='australia'
order by creditLimit desc
limit 2,4;

select*
from customers
where country in ('USA','UK','SPAIN');

select*
from customers
where country in ('nv','ca','ny');

select*
from customers
where creditLimit between 0 and 50000;

select country
from customers
where country like 'a%';

select country
from customers
where country like 'USA';

use classicmodels;
select*
from customers
where contactFirstName like 's%' and 'a%';

select*
from customers
where creditLimit>100000;

select*
from products
where MSRP>50;

select*
from products
where MSRP between 20 and 50;

select*
from customers
where creditLimit between 50000 and 100000;

select*
from customers
where country='usa'
and creditLimit>100000;

select*
from customers
order by creditLimit desc;

select*
from products
where productLine='classic cars'
and MSRP>50;

select*
from products
order by MSRP desc;

select*
from customers
where contactFirstName like 's%' and '%a';

select*
from customers
where contactFirstName like 'susa' and 'france';

select*
from products
where productline= 'motorcycles'
and msrp >80
order by MSRP desc;

select*
from customers
order by country asc, customerName desc;

select*
from products
order by MSRP desc;

select*
from customers
where country='germany';

select*
from customers
where creditLimit<50000;

select*
from customers
where customerName like 'b%';

select*
from customers
where customerName like '%s';

select*
from customers
where customerName like '%n%';

select*
from customers
where customerName like '1%';

select*
from customers
where customerName like 'n%';

select*
from products
where msrp between 50 and 100;

select*
from customers
where creditLimit between 70000 and 120000;

select*
from products
where buyPrice between 30 and 60;

select*
from employees
where employeeNumber between 1200 and 1400;

select*
from products
where quantityInStock between 1000 and 5000;

select*
from customers
where country in ('usa','france','germany');

select*
from customers
where creditLimit between 70000 and 120000;

select*
from products
where productLine in ('classiccars', 'motorcycles');

select*
from offices
where located in ('usa', 'austalia');

select*from customers;
describe customers;
select*from employees;
describe employees;
select*from offices;
describe offices;
select*from orderdetails;
describe orderdetails;
select*from orders;
describe orders;
select*from payments;
describe payments;
select*from productlines;
describe productlines;
select*from products;
describe products;

select*
from customers;

select contactfirstname,country,creditlimit
from customers;

select*
from employees;

select employeeNumber,firstName,email
from employees;

select*
from offices;

select officeCode,city,state,addressLine1,state
from offices;

select*
from orderdetails;

select orderNumber,productCode,priceEach
from orderdetails;

select*
from orders;

select orderNumber,orderDate,shippedDate,comments
from orders;

select*
from payments;

select customerNumber,paymentDate,amount
from payments;

select*
from products;

select productCode,productName,productLine
from products;

select country
from customers;

select distinct(status)
from orders;

select distinct(productline)
from products;

select distinct(jobtitle)
from employees;

select contactfirstname,country,creditlimit
from customers
where creditLimit>=100000;

select*from customers;

select contactfirstname,country,creditlimit
from customers
where creditLimit=0;

select contactfirstname,country,creditlimit
from customers
where creditLimit=30000;

select contactfirstname,country,creditlimit
from customers
where country='USA';

select contactfirstname,country,creditlimit
from customers
where creditLimit<=30000;

select*
from orders
where status='cancelled';

select contactfirstname,country,creditlimit
from customers
where country='USA' and creditLimit>=150000;

select*
from products
where productline='classic cars' and msrp<50;









Describe customers;
select customername, city
from customers;

select *
from customers
where country  ='france';

select customernumber, customername, country
from customers;


select customername, phone
from customers;

select country,count(country)
from customers
group by country;

select country,sum(creditlimit) as s
from customers
group by country
order by s desc
limit 5;

#find out the country name hows avr credit limit is less than 30000

select country,avg(creditlimit) as s
from customers
group by country
having s<30000;

#find out the country name hows coustomer count is greter than ecul to 5

select country,count(country) as cnt
from customers
group by country
having cnt>=5
order by cnt desc;

#find out the all agrigate values of orders in disending order by price

select product,count(product) as p
from productlines
group by productlines;
select * from productlines;

select productline,count(buyprice) as cnt,
sum(buyprice) as ttl,avg(buyprice) as average,
min(buyprice) as lowest,max(buyprice) as highest
from products
group by productline
order by ttl desc;

#find out the customers ditails whos creditlimit is greter than avg creditlimit

#find out customer ditails whos order is cancel

select *
from customers;

#find out the employee ditails whos is the in paris

select *
from employees
where officecode in
(select officecode
from offices
where city='paris');

#find out the payment ditais whos order is hold

select *
from payments
where customerNumber in
(select customerNumber
from orders
where status='on hold');

#find out customer ditails whos perchas classic car

select *
from customers;

select*
from products
where productLine in ('classiccars');

#customers
#orders-customernumber
#orderdetails-productcode
#products-classicars

select productCode, productName, 
productline
from products
where productline ='classic Cars';

#fatch the customer daitals with there orderditails
select c.customerName, c.country, 
c.creditlimit,o.orderdate,o.status
from customers as c 
inner join 
orders as o
on c.customerNumber=o.customerNumber
where o.status='cancelled';

#customer to fetch the payments details and check amount
select c.customerName, c.country, 
c.creditlimit,o.checknumber,o.amount
from customers as c 
inner join 
payments  as o
on c.customerNumber=o.customerNumber













