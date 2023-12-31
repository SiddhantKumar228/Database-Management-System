-- DML COMMANDS: INSERT, UPDATE, DELETE , REPLACE

-- TASKS:
-- 1. CREATE A DATABASE (CREATE)
-- 2. CREATE A TABLE USING VARIOUS DATATYPES (CREATE)
-- 3. INSERT VALUES IN THE TABLE (INSERT)
-- 4. UPDATE VALUES IN TABLE FOR A GIVEN ID (UPDATE)
-- 5. UPDATE ENTIRE VALUES OF AN ATTRIBUTE (UPDATE)
-- 6. DELETE THE TUPLE FOR A GIVEN ID (DELETE)
-- 7. DELETE ALL TUPLES FROM TABLE (DELETE)
-- 8. REPLACE VALUE OF NAME FOR AN ID (REPLACE)
-- 9. REPLACE VALUE FOR NOT GIVEN ID (REPLACE)


-- SOLUTIONS:

-- 1. CREATE A DATABASE
CREATE DATABASE DATABASE_2;

USE DATABASE_2;


-- 2. CREATE A TABLE USING VARIOUS DATATYPES
CREATE TABLE CUSTOMER
(
    CUSTOMER_ID INT NOT NULL UNIQUE PRIMARY KEY,
    FIRST_NAME VARCHAR(100),
    LAST_NAME VARCHAR(100),
    PHONE_NO INT UNIQUE,
    CITY VARCHAR(50),
    STATE VARCHAR(50),
    JOINING_DATE DATETIME
);


-- 3. INSERT VALUES IN THE THE TABLE
INSERT INTO CUSTOMER
    (CUSTOMER_ID , FIRST_NAME , LAST_NAME , PHONE_NO , CITY , STATE , JOINING_DATE)
VALUES
    (001, 'SIDDHANT', 'KUMAR', 940012, 'JAMSHEDPUR', 'JHARKHAND', '2022-12-20 10:20:00' ),
    (002, 'ADITYA', 'GAUR', 842232, 'DELHI', 'DELHI', '2021-10-25 10:25:00'),
    (003, 'SHYAM', 'SUNDER', 782528, 'MUZAFFARPUR', 'BIHAR', '2020-09-22 05:24:00'),
    (004, 'SAMARTH', 'VERMA', 672628, 'GREATER NOIDA', 'UTTAR PRADESH', '2020-12-22 06:20:00'),
    (005, 'VARUN', 'SINGH', 922345, 'FARIDABAD', 'HARYANA', '2019-07-05 09:34:00');

SELECT *
FROM CUSTOMER;


-- 4. UPDATE VALUES IN TABLE
UPDATE CUSTOMER
SET FIRST_NAME = 'RAIHAN', LAST_NAME = 'KARIM'
WHERE CUSTOMER_ID = 004;

SELECT *
FROM CUSTOMER;


-- 5. UPDATE ENTIRE VALUES OF AN ATTRIBUTE
-- EXECUTE THIS FIRST - "SET SQL_SAFE_UPDATES = 0;"

UPDATE CUSTOMER
SET FIRST_NAME = 'RANDOM', LAST_NAME = 'LASLEY';

SELECT *
FROM CUSTOMER;


-- 6. DELETE THE TUPLE FOR A GIVEN ID
DELETE FROM CUSTOMER WHERE CUSTOMER_ID = 005;

SELECT *
FROM CUSTOMER;


-- 7. DELETE ALL TUPLES FROM TABLE
DELETE FROM CUSTOMER;

SELECT *
FROM CUSTOMER;


-- 8. REPLACE VALUE OF NAME FOR AN ID
REPLACE INTO CUSTOMER
(CUSTOMER_ID , FIRST_NAME , LAST_NAME)
VALUES
(004, 'RAIHAN', 'KARIM');

SELECT *
FROM CUSTOMER;


-- 9. REPLACE VALUE FOR NOT GIVEN ID
REPLACE INTO CUSTOMER
(CUSTOMER_ID, FIRST_NAME, LAST_NAME)
VALUES
(006, 'PRASHANT' , 'SINGH');

SELECT *
FROM CUSTOMER;