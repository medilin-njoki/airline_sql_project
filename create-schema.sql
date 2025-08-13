use airline_db;

drop table if exists flight;
CREATE TABLE flight (
  id bigint PRIMARY KEY AUTO_INCREMENT,
  passenger_id varchar(20) NOT NULL,
  departure_airport varchar(10),
  arrival_airport varchar(10),
  departure_date date,
  flight_status varchar(50) NOT NULL,
  pilot_name varchar(100) NOT NULL
);

drop table if exists  airport;
CREATE TABLE airport (
  id bigint PRIMARY KEY AUTO_INCREMENT,
  airport_code varchar(10) UNIQUE NOT NULL,
  type varchar(50),
  name varchar(500),
  continent varchar(100),
  iso_country varchar(10),
  iso_region varchar(10)
);

drop table if exists passenger;
CREATE TABLE passenger (
  id bigint PRIMARY KEY AUTO_INCREMENT,
  passenger_id varchar(50) UNIQUE NOT NULL,
  first_name varchar(100) NOT NULL,
  last_name varchar(100),
  gender varchar(10),
  age int,
  nationality varchar(100)
);

ALTER TABLE flight ADD FOREIGN KEY (passenger_id) REFERENCES passenger (passenger_id);

ALTER TABLE  flight ADD FOREIGN KEY (departure_airport) REFERENCES airport (airport_code);

ALTER TABLE flight ADD FOREIGN KEY (arrival_airport) REFERENCES airport (airport_code);
