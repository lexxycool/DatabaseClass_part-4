-- 1. INSERT

-- Add Disneyland to the park table. (It was established on 7/17/1955, has an area of 0.78 square miles and does not offer camping.)
INSERT INTO park(park_name, date_established, area, has_camping)
VALUES('Disneyland', '7/7/1955', 0.78, false);


-- Add Hawkins, IN (with a population of 30,000 and an area of 14.71 square miles) and Cicely, AK (with a popuation of 839 and an area of 4.39 square miles) to the city table.
insert into city(city_name, state_abbreviation, population, area)
values('Hawkins', 'IN', 30000, 14.71),
('Cicely', 'AK', 839, 4.39);

select * from city
where state_abbreviation in ('IN', 'AK');

-- Since Disneyland is in California (CA), add a record representing that to the park_state table.
insert into park_state(park_id, state_abbreviation)
select park_id, 'CA' 
from park 
where park_name = 'Disneyland';

select * from park 
where park_name = 'Disneyland';


-- 2. UPDATE

-- Change the state nickname of California to "The Happiest Place on Earth."
select * from state
where state_abbreviation = 'CA';

update state
set state_nickname = 'The Happiest Place on Earth'
where state_abbreviation = 'CA';

-- Increase the population of California by 1,000,000.
update state
set population = 1000000
where state_abbreviation = 'CA';


-- Change the capital of California to Anaheim.
update state
set capital = (select city_id from city
where city_name = 'Anaheim'
and state_abbreviation = 'CA');




-- Change California's nickname back to "The Golden State", reduce the population by 1,000,000, and change the capital back to Sacramento.
update state
set state_nickname = 'The Golden State', 
population = population - 1000000, 
capital = (select city_id from city
where city_name ='Sacramento'
and state_abbreviation = 'CA')
where state_abbreviation = 'CA';


-- 3. DELETE

-- Delete Hawkins, IN from the city table.
DELETE FROM city WHERE city_name = 'Hawkins' AND state_abbreviation = 'IN';
select * from city
where city_name = 'Hawkins';


-- Delete all cities with a population of less than 1,000 people from the city table.
DELETE FROM city WHERE population < 1000;

select * from city 
where population < 1000



-- 4. REFERENTIAL INTEGRITY

-- Try adding a city to the city table with "XX" as the state abbreviation.


-- Try deleting California from the state table.


-- Try deleting Disneyland from the park table. Try again after deleting its record from the park_state table.



-- 5. CONSTRAINTS

-- NOT NULL constraint
-- Try adding Smallville, KS to the city table without specifying its population or area.


-- DEFAULT constraint
-- Try adding Smallville, KS again, specifying an area but not a population.


-- Retrieve the new record to confirm it has been given a default, non-null value for population.


-- UNIQUE constraint
-- Try changing California's nickname to "Vacationland" (which is already the nickname of Maine).


-- CHECK constraint
-- Try changing the census region of Florida (FL) to "Southeast" (which is not a valid census region).



-- 6. TRANSACTIONS

-- Delete the record for Smallville, KS within a transaction.


-- Delete all of the records from the park_state table, but then "undo" the deletion by rolling back the transaction.


-- Update all of the cities to be in the state of Texas (TX), but then roll back the transaction.


-- Demonstrate two different SQL connections trying to access the same table where one is inside of a transaction but hasn't committed yet.
