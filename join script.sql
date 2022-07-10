#join 

#syntax
select t1.t1_col1, t2.t2_col2 from table2 t2
join table1 t1 on t2.forg_key = t1.prim_key;

use coffee_store;

select*from products;
select*from customers;
select*from orders;

# inner join product, customer and orders table
select products.name as Product, orders.order_time, customers.first_name, customers.last_name from orders       
inner join products on orders.product_id = products.id 
inner join customers on orders.customer_id=customers.id;

select p.name, p.price, o.order_time from orders o     # column name, price from p(product), order_time from o(orders)
join products p on o.product_id = p.id                 # join p and o on condition o.product_id = p.id 
order by o.order_time;

# Show only common element from cutomer 

#left join

select *from orders;
select *from customers;

update orders
set customer_id = null
where id = 1;

select o.id, c.phone_number, c.last_name, o.order_time from customers c    #id from orders as o and phone_number, last_name, order_time from customer as c 
left join orders o on c.id = o.customer_id								 #left join o.id with c's above columns the  above columns on condition c.id = o.customer_id
order by o.order_time
limit 10;




#right join
update orders
set customer_id = null
where id = 1;

select o.id, c.phone_number, c.last_name, o.order_time from orders o    		#id from orders as o and phone_number, last_name, order_time from customer as c 
right join customers c on o.customer_id = c.id								#right join o.id with c's above columns the  above columns on condition c.id = o.customer_id
order by o.order_time
limit 10;



#joining more than two table
select*from products;
select*from customers;
select*from orders;

select p.name as Product, p.price as Price, c.first_name, c.last_name, o.order_time from products p   #join name, price, first name, last name and order time
join orders o on p.id = o.product_id
join customers c on c.id = o.customer_id
where c.last_name = 'Martin'
order by order_time;

# Find customer who not order any thing
select c.id as Customer_id,  c.first_name, c.last_name , customer_id as Ordered from customers c
left join orders on c.id = orders.customer_id
where orders.customer_id is null;

