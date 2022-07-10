
use cinema_booking_system;

-- 1. Which flim are over 2 hour long?
select*from films;
select name, length_min from films
where length_min > 120;

-- 2. which film had the most screenings in october 2017?
select*from screenings;
select f.name, count(s.film_id) as showing from screenings s
join films f on f.id = s.film_id
group by film_id
order by showing desc
limit 1;

-- 3. How many bookings did the film 'Jigsaw' have in october 2017?
select*from bookings;
select*from customers;

select count(*) as no_bookings from bookings
where screening_id in
(select id from screenings
where film_id = 5);

select id, name = "Jigsaw" from films;

-- 4. Which 5 customers made the most bookings in October 2017?
select c.first_name, c.last_name, count(b.id) as no_bookings from bookings b
join customers c on c.id = b.customer_id
group by c.frist_name, c.last_name 
order by no_bookings desc
limit 5;

-- 5. Which film was shown in the Chaplin room most often in oct 2017?

select*from films;
select*from rooms;
select*from screenings;

select f.name, count(r.name) as no_screenings from films f
join screenings s on f.id = s.film_id
join rooms r on r.id = s.room_id
where r.id = 1
group by f.name
order by no_screenings desc;

-- 6. How many of the customer made a booking in oct 2017?
select count(*) from customers;
select*from bookings;
select count(distinct(customer_id)) as no_of_customers from bookings;