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