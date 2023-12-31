-- DRL/DQL COMMANDS: SELECT, FROM, DUAL, WHERE, BETWEEN, IN, NOT, AND, OR, NULL, WILDCARD

-- TASKS:
-- 1. CREATE A DATABASE (CREATE)
-- 2. CREATE A TABLE USING VARIOUS DATATYPES (CREATE)
-- 3. INSERT VALUES IN THE TABLE (INSERT)
-- 4. SHOW DATA OF PEOPLE WITH SALARY RANGE (BETWEEN)
-- 5. SHOW CUSTOMER WITHIN 2 DEPARTMENTS (IN)
-- 6. SHOW CUSTOMER WITHIN 2 DEPARTMENTS (OR)
-- 7. SHOW CUSTOMER THAT DOES NOT HAVE A PARTICULAR 2 DEPARTMENT (NOT)
-- 8. SHOW CUSTOMER WITH PINCODE NULL (NULL)
-- 9. PATTERN SEARCHING (WILDCARD)


-- SOLUTIONS:

-- 1. CREATE A DATABASE
CREATE DATABASE DATABASE_3;

USE DATABASE_3;


-- 2. CREATE A TABLE USING VARIOUS DATATYPES
CREATE TABLE CUSTOMER
(
    CUSTOMER_ID INT NOT NULL UNIQUE PRIMARY KEY,
    FIRST_NAME VARCHAR(100),
    LAST_NAME VARCHAR(100),
    PHONE_NO INT UNIQUE,
    CITY VARCHAR(50),
    STATE VARCHAR(50),
    SALARY INT,
    JOINING_DATE DATETIME,
    PINCODE INT,
    DEPARTMENT VARCHAR (10)
);


-- 3. INSERT VALUES IN THE THE TABLE
INSERT INTO CUSTOMER
    (CUSTOMER_ID , FIRST_NAME , LAST_NAME , PHONE_NO , CITY , STATE , JOINING_DATE, SALARY , PINCODE, DEPARTMENT)
VALUES
    (001, 'SIDDHANT', 'KUMAR', 940012, 'JAMSHEDPUR', 'JHARKHAND', '2022-12-20 10:20:00', 49000, 210310 , 'ADMIN' ),
    (002, 'ADITYA', 'GAUR', 842232, 'DELHI', 'DELHI', '2021-10-25 10:25:00' , 45000 , 210310 , 'HR'),
    (003, 'SHYAM', 'SUNDER', 782528, 'MUZAFFARPUR', 'BIHAR', '2020-09-22 05:24:00' , 51000 , 210310 , 'ACCOUNTS'),
    (004, 'SAMARTH', 'VERMA', 672628, 'GREATER NOIDA', 'UTTAR PRADESH', '2020-12-22 06:20:00' , 36000 , NULL , 'ADMIN'),
    (005, 'VARUN', 'SINGH', 922345, 'FARIDABAD', 'HARYANA', '2019-07-05 09:34:00' , 56000 , 831001 , 'HR'),
    (006, 'YUVRAJ', 'HARSHVARDHAN', 873562, 'LUDHIANA', 'PUNJAB', '2012-07-05 09:38:00' , 17000 , 811011 , 'ADMIN');


SELECT *
FROM CUSTOMER;


-- 4. SHOW DATA OF PEOPLE WITH SALARY RANGE
SELECT *
FROM CUSTOMER
WHERE SALARY BETWEEN 30000 AND 50000;


-- 5. SHOW CUSTOMER WITHIN 2 DEPARTMENTS
SELECT *
FROM CUSTOMER
WHERE DEPARTMENT IN( 'ACCOUNTS' , 'HR');


-- 6. SHOW CUSTOMER WITHIN 2 DEPARTMENTS
SELECT *
FROM CUSTOMER
WHERE DEPARTMENT = 'HR' OR DEPARTMENT = 'ACCOUNTS';


-- 7. SHOW CUSTOMER THAT DOES NOT HAVE A PARTICULAR 2 DEPARTMENT
SELECT *
FROM CUSTOMER
WHERE DEPARTMENT NOT IN( 'ACCOUNTS' , 'HR');


-- 8. SHOW CUSTOMER WITH PINCODE NULL
SELECT *
FROM CUSTOMER
WHERE PINCODE IS NULL;


-- 9. PATTERN SEARCHING
SELECT *
FROM CUSTOMER
WHERE FIRST_NAME LIKE '_I%';
SELECT *
FROM CUSTOMER
WHERE FIRST_NAME LIKE '%I%';