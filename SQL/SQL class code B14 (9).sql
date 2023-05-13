use northwind;

# Q1
select * from customers;  # level/ PK/ graularity - id (demo info of the cust)

select * from employees; # level/ PK/ graularity - id (demo info of the emp)

select * from orders;  # order level info... level/ PK/ graularity - id (info of the order)

select * from order_details; # FK - oder_id linked to PK id in the orders table; 
                             # FK - product_id linked to PK id in the products table;
                             # granularity - prouct and order id (PK - order id and product id)

# select * from inventory_transactions;
select * from products;  #  PK - id


# Q2 
SELECT product_code, product_name,  list_price
FROM products;

# Q3 function - math (numeric)
SELECT id, product_code, product_name,  round(list_price,2) as rnd_lp
FROM products;

# drop table sales_reports;

SELECT TRIM(leading 'ba' FROM 'barxxyz');

SELECT TRIM('  bar   ');

# Q4
SELECT id, product_code, trim(leading 'Northwind Traders ' from product_name) as pname,  round(list_price,2) as rnd_lp
FROM products;

# Q5

select *
from orders
where (order_date >= '2006-06-01' and  order_date <= '2006-06-30') or ship_city = 'New York';

select *
from orders
where (order_date >= '2006-06-01' and  order_date <= '2006-06-30');

select * , month(order_date), year(order_date)
from orders
where month(order_date) = 6 and year(order_date) = 2006;


select * 
from orders
where order_date between '2006-06-01' and '2006-06-30';

# Q6

select distinct(payment_type) 
from orders;

select count(*)
from orders
where payment_type = 'Cash';

select *
from orders
where payment_type = 'Cash';

# q8

select * from products;

select avg(list_price) from
products;

select product_name, list_price
from products
where list_price > 15.84577778;  # hard coding


select product_name, list_price
from products
where list_price > 
(
	select avg(list_price) from
	products
);

select * from order_details
where quantity >= 30;


select order_id, sum(quantity) as cart_qty 
from order_details
group by order_id
having sum(quantity) > 30;

# syntax
select A,B,C,D, SUM(g), avg(h)
from tbl
group by A,B,C;

select * from order_details;

# prod contribution to rev in each order - num
select order_id, product_id, quantity, unit_price, round(quantity*unit_price) as prd_rev
from order_details;

# total val of the cart for each order = den
select order_id, sum(quantity*unit_price) as ttl_cart
from order_details
group by order_id;


# join
select num.order_id, product_id, quantity, unit_price, 
round(quantity*unit_price) as prd_rev, den.ttl_cart,
round(quantity*unit_price) / den.ttl_cart as pct
from order_details as num
inner join
(
	select order_id, sum(quantity*unit_price) as ttl_cart
	from order_details
	group by order_id
) as den
on num.order_id = den.order_id;