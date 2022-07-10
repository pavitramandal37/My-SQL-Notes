
#  Agregartion function:
#  An aggregate function performs a calculation on a set of values, and returns a single value.

use cinema_booking_system;

# 1. Count  syntax: select count(column_name) from table_name;
select*from customers;
select count(last_name) from customers
where last_name = 'Smith';

select count(*) from customers
where first_name is null;


# 2. Sum  
select*from rooms;
select sum(no_seats) from rooms;

# 3. Min and Max
select*from films;
select max(length_min) from films;        #maximum value in length_min
select name, max(length_min) from films;  #maximum value with name 
select min(length_min) from films;		  #minimum value in length_min

# 4. average
select avg(length_min) from films; 

# 5. grouping
show tables;

select*from bookings;
select customer_id, screening_id, count(id) from bookings
group by customer_id, screening_id;

select f.name, s.start_time, c.first_name, c.last_name, COUNT(b.id) FROM films f  -- name, start time, first name, last name count of bookings from films
join screenings s ON f.id = s.film_id 											  -- join screeenings(for start time) on condition flim.id = screenings.film_id
join bookings b ON s.id = b.screening_id 										  -- join bookings(for id) on condition screenings.id = screenings.booking_id
join customers c ON b.customer_id = c.id 										  -- join coustomers(for names) on condition bookings.coustomers_id = customers.id
group by f.name, c.last_name, c.first_name, s.start_time 						  -- group by all
order by s.start_time;

# having clause  (it use when we have used group by function)
select*from bookings;
select customer_id, screening_id, count(id) from bookings
group by customer_id, screening_id
having customer_id = 10;


#exercise 1: Select the customer id and count the number of reserved seats grouped by customer for October 2017.
select*from reserved_seat;
select*from bookings;
select*from customers;

select b.customer_id, count(rs.id) from bookings b
join reserved_seat rs on b.id=rs.booking_id
group by b.customer_id;

#exercise 1: Select the flim name and count the number of screenings for each flim that is over 2 hour long.
show tables;
select f.name, f.length_min, count(s.id) from films f
join screenings s on f.id= s.film_id
group by f.name, f.length_min
having f.length_min > 120;