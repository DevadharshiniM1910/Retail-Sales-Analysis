create database finalproject;
use finalproject;
select * from brands;
select * from categories;
select * from customers;
select * from order_items;
select * from orders;
select * from products;
select * from staffs;
select * from stocks;
select * from stores;
select * from m;
select * from rf;


Task #3
select * from orders as a
inner join order_items as b
on a.order_id=b.order_id
inner join products as c
on b.category_id=c.category_id;

Task #4
select a.store_id,c.total_price
from orders as a
inner join stores  as b
on a.store_id=b.store_id
inner join order_items as c
on a.order_id=c.order_id ;

# Task 5
select a.product_name,b.quantity
from products as a
inner join stocks as b
on a.product_id=b.product_id
order by quantity desc
limit 5;

#Task 6
select a.customer_id,sum(b.total_price)as total_revenue,count(b.order_id)as total_orders,sum(b.item_id) as total_items
from orders as a
inner join order_items as b
on a.order_id=b.order_id
group by a.customer_id;

# Task7
select c.customer_id,c.first_name,sum(b.total_price) as total_revenue,
case
when sum(b.total_price) < 500 then"low"
when sum(b.total_price) < 4000 then "medium"
else "high"
end as segment
from orders as a
inner join order_items as b
on a.order_id=b.order_id
inner join customers as c
on a.customer_id=c.customer_id
group by c.customer_id,c.first_name
order by total_revenue;

#Task 8
select a.order_id,c.first_name,Sum(b.total_price)as total_revenue
from orders as a
inner join order_items as b
on a.order_id=b.order_id
inner join staffs as c
on a.staff_id=c.staff_id
group by a.order_id,c.first_name;

#Task 9
select a.product_name,b.quantity
from products as a
inner join stocks as b
on a.product_id=b.product_id
where quantity <10;
 
#Task 10
create table customer_segments
(Seg_id int primary key,
cust_id int,
Total_timespent varchar(50),
Total_orders int,
Total_items int,
Seg varchar(50));
select*from customer_segments;

Create table rfm_segments
(Seg_id int primary key,
Total_timespent varchar(50),
Total_orders int,
Total_items int,
Seg varchar(50));
select* from rfm_segments;



create table Frequency
(customer_id int,
order_id int);
select*from fre;