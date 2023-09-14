-- SORTNG & GROUPING COMMANDS: ORDER BY, GROUP BY - COUNT, MIN, MAX, AVG, SUM

-- TASKS:
-- 1. CREATE A DATABASE (CREATE)
-- 2. CREATE A TABLE USING VARIOUS DATATYPES (CREATE)
-- 3. INSERT VALUES IN THE TABLE (INSERT)
-- 4. SORT THE TABLE ACCORDING TO SALARY IN BOTH ORDER (ORDER BY)
-- 5. NAMES OF ALL DEPARTMENTS IN THE TABLE (DISTINCT)
-- 6. COUNT TOTAL CUSTOMERS, CUSTOMERS IN EACH DEPARTMENT (COUNT)
-- 7. MINIMUM SALARY OF CUSTOMERS, CUSTOMERS IN EACH DEPARTMENT (MIN)
-- 8. MAXIMUM SALARY OF CUSTOMERS, CUSTOMERS IN EACH DEPARTMENT (MAX)
-- 9. AVERAGE SALARY OF CUSTOMERS, CUSTOMERS IN EACH DEPARTMENT (AVG)
-- 10. SUM OF SALARY OF CUSTOMERS, CUSTOMERS IN EACH DEPARTMENT (SUM)
-- 11. COUNT CUSTOMERS IN EACH DEPARTMENT WITH DEPARTMENT HAVING CUSTOMERS > 1 (HAVING)


-- SOLUTIONS:

-- 1. CREATE A DATABASE
CREATE DATABASE DATABASE_4;

USE DATABASE_4;


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


-- 4. SORT THE TABLE ACCORDING TO SALARY IN BOTH ORDER
SELECT *
FROM CUSTOMER
ORDER BY SALARY;

SELECT *
FROM CUSTOMER
ORDER BY SALARY DESC;


-- 5. NAMES OF ALL DEPARTMENTS IN THE TABLE
SELECT DISTINCT DEPARTMENT
FROM CUSTOMER;


-- 6. COUNT TOTAL CUSTOMERS, CUSTOMERS IN EACH DEPARTMENT
SELECT COUNT(FIRST_NAME)
FROM CUSTOMER;

SELECT DEPARTMENT , COUNT(FIRST_NAME)
FROM CUSTOMER
GROUP BY DEPARTMENT;


-- 7. MINIMUM SALARY OF CUSTOMERS, CUSTOMERS IN EACH DEPARTMENT
SELECT MIN(SALARY)
FROM CUSTOMER;

SELECT DEPARTMENT , MIN(SALARY)
FROM CUSTOMER
GROUP BY DEPARTMENT;


-- 8. MAXIMUM SALARY OF CUSTOMERS, CUSTOMERS IN EACH DEPARTMENT
SELECT MAX(SALARY)
FROM CUSTOMER;

SELECT DEPARTMENT , MAX(SALARY)
FROM CUSTOMER
GROUP BY DEPARTMENT;


-- 9. AVERAGE SALARY OF CUSTOMERS, CUSTOMERS IN EACH DEPARTMENT
SELECT AVG(SALARY)
FROM CUSTOMER;

SELECT DEPARTMENT , AVG(SALARY)
FROM CUSTOMER
GROUP BY DEPARTMENT;


-- 10. SUM OF SALARY OF CUSTOMERS, CUSTOMERS IN EACH DEPARTMENT
SELECT SUM(SALARY)
FROM CUSTOMER;

SELECT DEPARTMENT , SUM(SALARY)
FROM CUSTOMER
GROUP BY DEPARTMENT;


-- 11. COUNT CUSTOMERS IN EACH DEPARTMENT WITH DEPARTMENT HAVING CUSTOMERS > 1
SELECT DEPARTMENT , COUNT(FIRST_NAME)
FROM CUSTOMER
GROUP BY DEPARTMENT
HAVING COUNT(FIRST_NAME) > 1;