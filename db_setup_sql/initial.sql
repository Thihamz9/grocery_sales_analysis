CREATE TABLE categories(
	category_id INT,
	category_name VARCHAR(100)
);

COPY categories
FROM 'C:\\Users\\thiha\\OneDrive\\Desktop\\DataAnalyticsProjects\\GROCERY_SALES_ANALYSIS\\categories.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE cities(
	city_id INT NOT NULL,
	city_name VARCHAR(255),
	zipcode INT,
	country_id INT,
	PRIMARY KEY (city_id)
);

COPY cities
FROM 'C:\\Users\thiha\OneDrive\\Desktop\\DataAnalyticsProjects\\GROCERY_SALES_ANALYSIS\\cities.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM cities;

CREATE TABLE countries(
	country_id INT NOT NULL,
	country_name VARCHAR(100),
	country_code VARCHAR(10),
	PRIMARY KEY (country_id)
);

COPY countries
FROM 'C:\\Users\thiha\OneDrive\\Desktop\\DataAnalyticsProjects\\GROCERY_SALES_ANALYSIS\\countries.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM countries;

CREATE TABLE customers (
	customer_id INT NOT NULL,
	first_name VARCHAR(255),
	middle_initial CHAR(1),
	last_name VARCHAR(255),
	city_id INT,
	address VARCHAR(255),
	PRIMARY KEY(customer_id)
);

COPY customers
FROM 'C:\\Users\thiha\OneDrive\\Desktop\\DataAnalyticsProjects\\GROCERY_SALES_ANALYSIS\\customers.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM customers;

CREATE TABLE employees (
	employee_id INT NOT NULL,
	first_name VARCHAR(255),
	middle_initial CHAR(1),
	last_name VARCHAR(255),
	birth_date DATE,
	gender CHAR(1),
	city_id INT,
	hire_date TIMESTAMP,
	PRIMARY KEY(employee_id)
	
);

COPY employees
FROM 'C:\\Users\thiha\OneDrive\\Desktop\\DataAnalyticsProjects\\GROCERY_SALES_ANALYSIS\\employees.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM employees;



CREATE TABLE products (
	product_id INT NOT NULL,
	product_name VARCHAR(255),
	price NUMERIC(10,2),
	category_id INT,
	class_type VARCHAR(50),
	modify_date TIMESTAMP,
	resistant VARCHAR(50),
	is_allergic BOOLEAN,
	vitality_days FLOAT,
	PRIMARY KEY(product_id)
);

COPY products
FROM 'C:\\Users\thiha\OneDrive\\Desktop\\DataAnalyticsProjects\\GROCERY_SALES_ANALYSIS\\products.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', NULL 'Unknown');

SELECT * FROM products;


CREATE TABLE sales (
    sales_id INT PRIMARY KEY,
    sales_person_id INT,
    customer_id INT,
    product_id INT,
    quantity INT,
    discount NUMERIC(5,2), 
    total_price NUMERIC(10,2), 
    sales_date TIMESTAMP, 
    transaction_number VARCHAR(255) 
);

COPY sales
FROM 'C:\\Users\thiha\OneDrive\\Desktop\\DataAnalyticsProjects\\GROCERY_SALES_ANALYSIS\\sales.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',');

SELECT * FROM sales;




