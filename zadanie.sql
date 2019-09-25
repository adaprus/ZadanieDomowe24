CREATE SCHEMA company;

CREATE TABLE employees(
id INT auto_increment PRIMARY KEY,
firstname VARCHAR(15) NOT NULL,
lastname VARCHAR(30) NOT NULL,
salary DECIMAL(7,2),
birthday DATE,
position VARCHAR(20)
);

INSERT INTO employees(firstname, lastname, salary, birthday, position) 
VALUES('Jan', 'Nowak', 5000, '1968-11-12', 'designer');

INSERT INTO employees(firstname, lastname, salary, birthday, position) 
VALUES('Janusz', 'Kolodziej', 12000.0, '1969-10-02', 'manager');

INSERT INTO employees(firstname, lastname, salary, birthday, position) 
VALUES('Katarzyna', 'Wielka', 8000.0, '1975-01-17', 'IT specialist');

INSERT INTO employees(firstname, lastname, salary, birthday, position) 
VALUES('Maria', 'Starmach', 7000.0, '1989-01-13', 'designer');

INSERT INTO employees(firstname, lastname, salary, birthday, position) 
VALUES('Michal', 'Kochel', 11000.0, '1995-03-07', 'manager');

INSERT INTO employees(firstname, lastname, salary, birthday, position) 
VALUES('Piotr', 'Nowakakowski', 6000.0, '1988-10-30', 'designer');

INSERT INTO employees(firstname, lastname, salary, birthday, position) 
VALUES('Jan', 'Lis', 12000.0, '1993-10-02', 'manager');

SELECT * FROM employees
ORDER BY lastname;

SELECT * FROM employees
WHERE position='manager';

SELECT * FROM employees
WHERE ABS(DATEDIFF(CURDATE(), birthday) / 365) >= 30;

UPDATE employees
SET salary = 1.1 * salary
WHERE position = 'designer';

SELECT * FROM employees
ORDER BY birthday;

DELETE FROM employees
WHERE id='7';

DROP TABLE employees;

CREATE TABLE positions(
id INT auto_increment PRIMARY KEY,
position_name VARCHAR(30),
position_description VARCHAR(100),
salary DECIMAL(7,2)
);

INSERT INTO positions(position_name, position_description, salary)
VALUES('manager', 'super zorganizowany manager', 12000);

INSERT INTO positions(position_name, position_description, salary)
VALUES('designer', 'wysoko wykwalifikowany projektant', 7000);

INSERT INTO positions(position_name, position_description, salary)
VALUES('IT specialist', 'najlepszy spec od IT', 10000);

INSERT INTO positions(position_name, position_description, salary)
VALUES('constructor', 'kreatywny konstruktor', 9000);

CREATE TABLE address(
id INT auto_increment PRIMARY KEY,
street_and_number VARCHAR(50),
postal_code VARCHAR(6),
city VARCHAR(20)
);

INSERT INTO address(street_and_number, postal_code, city)
VALUES('Radinga 3/2', '54-115', 'Wroclaw');

INSERT INTO address(street_and_number, postal_code, city)
VALUES('Aleja Architektow 3/6', '54-115', 'Wroclaw');

INSERT INTO address(street_and_number, postal_code, city)
VALUES('Bialodrzewna 11/5', '54-114', 'Wroclaw');

INSERT INTO address(street_and_number, postal_code, city)
VALUES('Lauterbacha 11/6', '50-175', 'Wroclaw');

INSERT INTO address(street_and_number, postal_code, city)
VALUES('Kolista 44/3', '53-005', 'Wroclaw');

DROP TABLE address;

DROP TABLE positions;

DROP TABLE employees;

CREATE TABLE employees(
id INT auto_increment PRIMARY KEY,
firstname VARCHAR(20),
lastname VARCHAR(30),
id_position INT,
id_address INT
);

INSERT INTO employees(firstname, lastname, id_position, id_address) 
VALUES('Jan', 'Nowak', 1, 1);

INSERT INTO employees(firstname, lastname, id_position, id_address) 
VALUES('Janusz', 'Kolodziej', 2, 2);

INSERT INTO employees(firstname, lastname, id_position, id_address) 
VALUES('Katarzyna', 'Wielka', 1, 3);

INSERT INTO employees(firstname, lastname, id_position, id_address) 
VALUES('Maria', 'Starmach', 3, 2);

INSERT INTO employees(firstname, lastname, id_position, id_address) 
VALUES('Michal', 'Kochel', 2, 4);

INSERT INTO employees(firstname, lastname, id_position, id_address) 
VALUES('Piotr', 'Nowakakowski', 4, 5);

SELECT firstname, lastname, street_and_number, postal_code, city, position_name, salary
FROM employees e
JOIN address a ON e.id_address=a.id
JOIN positions p ON e.id_position=p.id;

SELECT SUM(salary)
FROM employees e
JOIN positions p ON e.id_position=p.id;

SELECT e.firstname, e.lastname, a.postal_code FROM employees e, address a
WHERE e.id_address = a.id AND postal_code = '54-115';

























