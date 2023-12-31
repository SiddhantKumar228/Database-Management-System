-- ALTER OPERATIONS: ADD, MODIFY, CHANGE, RENAME, DROP COLUMN

-- TASKS:
-- 1. CREATE A DATABASE (CREATE)
-- 2. CREATE A TABLE USING VARIOUS DATATYPES (CREATE)
-- 3. INSERT VALUES IN THE TABLE (INSERT)
-- 4. ADD TWO NEW COLUMNS IN TABLE (ADD)
-- 5. CHANGE DATATYPE OF LAST TWO COLUMNS (MODIFY)
-- 6. RENAME LAST TWO COLUMNS (CHANGE)
-- 7. REMOVE THE LAST TWO COLUMNS COMPLETELY (DROP COLUMN)
-- 8. RENAME THE TABLE (RENAME)


-- SOLUTIONS:

-- 1. CREATE A DATABASE
CREATE DATABASE DATABASE_6;

USE DATABASE_6;


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


-- 4. ADD TWO NEW COLUMNS IN TABLE
ALTER TABLE CUSTOMER ADD EMAIL VARCHAR(100)
,
ADD DOB DATE;

SELECT *
FROM CUSTOMER;


-- 5. CHANGE DATATYPE OF LAST TWO COLUMNS
ALTER TABLE CUSTOMER MODIFY EMAIL CHAR, MODIFY DOB DATETIME;

DESC CUSTOMER;


-- 6. RENAME LAST TWO COLUMNS
ALTER TABLE CUSTOMER CHANGE EMAIL EMAIL_ADDRESS VARCHAR
(100), CHANGE DOB DATE_OF_BIRTH DATE;

DESC CUSTOMER;


-- 7. REMOVE THE LAST TWO COLUMNS COMPLETELY
ALTER TABLE CUSTOMER DROP COLUMN EMAIL_ADDRESS
,
DROP COLUMN DATE_OF_BIRTH;

SELECT *
FROM CUSTOMER;


-- 8. RENAME THE TABLE
ALTER TABLE CUSTOMER RENAME CUSTOMER_TABLE;

SELECT *
FROM CUSTOMER_TABLE;