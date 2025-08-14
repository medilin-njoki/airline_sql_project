USE airline_db;

# last update of the data
update airport
set continent = 'NA'
WHERE continent = 'AN';

#sex distribution among passengers

SELECT COUNT(*) AS total_passengers 
FROM passenger;

SELECT gender,COUNT(*) AS count
FROM passenger
GROUP BY gender;

#Average age of the passengers

SELECT ROUND(AVG(age), 1) AS averange_age
FROM passenger;

#Top 5 countries with highest passengers

SELECT * 
FROM airport;

SELECT 
nationality,
COUNT(*) AS passenger_count
FROM passenger
GROUP BY nationality
ORDER BY passenger_count DESC
LIMIT 5;

use airline_db;
select * from airport;


-- total airports per country - top 5 --
select iso_country, count(iso_country) as total_country
from airport
group by iso_country
order by total_country desc
limit 5;


-- total type of airports per country --
select iso_country, type, count(type) as type_country
from airport
group by type
order by type_country desc;


-- total airports per continent - top 5 --
select continent, count(continent) as total_continent
from airport
group by continent
order by total_continent desc
limit 5;


-- number of flights per airport - joined using airport_code column --
select airport_code, count(f.arrival_airport) as total_landed
from airport a
join flight f 
on a.airport_code = f.arrival_airport
group by a.airport_code;


-- Top 5 arrival airports by number of flights
SELECT arrival_airport, COUNT(*) AS total_flights
FROM airline_db.flight
GROUP BY arrival_airport
ORDER BY total_flights DESC
LIMIT 5;


-- Number of flights per pilot
SELECT pilot_name, COUNT(*) AS flights_flown
FROM airline_db.flight
GROUP BY pilot_name
ORDER BY flights_flown DESC;


-- Identifies airports with the most delays.
SELECT arrival_airport, COUNT(*) AS delayed_flights
FROM airline_db.flight
WHERE flight_status = 'Delayed'
GROUP BY arrival_airport
ORDER BY delayed_flights DESC;

-- Monthly flight counts
SELECT MONTH(departure_date) AS month, COUNT(*) AS total_flights
FROM airline_db.flight
GROUP BY MONTH(departure_date)
ORDER BY month;

-- Filters airports by both size and continent.
SELECT name, iso_country, iso_region
FROM airline_db.airport
WHERE type = 'large_airport'
  AND continent = 'EU';

-- Top 5 countries with the most airports--

select distinct `type`
from airport;


SELECT
  iso_country,
  COUNT(*) AS airport_count
FROM
  airport
where `type` in ('small_airport',  'medium_airport' , 'large_airport')
GROUP BY
  iso_country
ORDER BY
  airport_count DESC
LIMIT
  5;


