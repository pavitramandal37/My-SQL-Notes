use coffee_store;

select * from customers;
select * from orders;
select * from pay;
select * from products;

###################### Group By #########################
#Group by function: Group by function is use to group the row by one or more column, in group by function we can use aggregate function like count avg min max sum
#					for example find the number of customer in each country
#					code will be 
#					select country, count(*) from customers group by country;

select date_used, credit_card_no, count(credit_card_no) as count from pay
group by date_used, credit_card_no;

select date_used as date, customer_id, first_name, last_name, count(customer_id) as count_customer from pay 
inner join customers
on customer_id = customers.id
group by date_used,customer_id
order by count(customer_id) desc;

################### Advance SQL command #####################
select extract(Year from date_used) as Year from pay;        #extract year
select extract(quarter from date_used) as Quarters from pay; #extract quarter
select extract(month from date_used) as Months from pay;     #extract month
select extract(day from date_used) as Weekday from pay;      #extract day
select dayofweek(date_used) as Weekday from pay;             #extract day

select to_days(date_used) from pay;                          #how many days till now

select TO_CHAR(date_used, 'dd-mm-yyyy') from pay;            #changing the format of date

################### Extarct the payment of the cards on monday(2) #################
select date_used, credit_card_no, dayofweek(date_used) as Weekday from pay
where dayofweek(date_used) = 2;

select * from customers;
select first_name || ' ' || last_name as n from customers;
#or
SELECT CONCAT(first_name, ' ', last_name) as customer_name from customers;

################### Subquery ###################
select product_id, order_time from orders
where order_time > (select avg(order_time) from orders);

select * from orders;
