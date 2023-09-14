CREATE DATABASE PRACTICE;
USE PRACTICE;

-- ----------------------------------------------------------------------------------------------------------------------------------

-- WORKER TABLE
CREATE TABLE WORKER(
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME VARCHAR
(100),
LAST_NAME VARCHAR
(100),
SALARY INT
(15),
JOINING_DATE DATETIME,
DEPARTMENT VARCHAR
(100)
);

INSERT INTO WORKER
    (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES
    (1, 'John', 'Doe', 50000, '2023-09-15 09:00:00', 'HR'),
    (2, 'Jane', 'Smith', 60000, '2023-09-15 09:30:00', 'HR'),
    (3, 'Mike', 'Johnson', 55000, '2023-09-15 10:15:00', 'ACCOUNTS'),
    (4, 'Emily', 'Williams', 62000, '2023-09-15 11:00:00', 'ADMIN'),
    (5, 'David', 'Brown', 53000, '2023-09-15 12:00:00', 'HR'),
    (6, 'Sarah', 'Clark', 58000, '2023-09-15 13:30:00', 'ACCOUNTS'),
    (7, 'Michael', 'Lee', 51000, '2023-09-15 14:45:00', 'ADMIN'),
    (8, 'Laura', 'Adams', 59000, '2023-09-15 15:15:00', 'HR'),
    (9, 'Chris', 'Wilson', 54000, '2023-09-15 16:30:00', 'ACCOUNTS'),
    (10, 'Kim', 'Taylor', 60000, '2023-09-15 17:00:00', 'ADMIN');

SELECT *
FROM WORKER;

-- -------------------------------------------------------------------------------------------------------------------------------

-- BONUS TABLE
CREATE TABLE BONUS
(
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT(10),
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
REFERENCES WORKER(WORKER_ID)
ON DELETE CASCADE
);

INSERT INTO BONUS
    (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE)
VALUES
    (1, 1000, '2023-09-15 09:00:00'),
    (2, 800, '2023-09-15 10:30:00'),
    (3, 1200, '2023-09-15 11:45:00'),
    (1, 1500, '2023-09-15 13:15:00'),
    (2, 900, '2023-09-15 14:30:00');

SELECT *
FROM BONUS;

-- -------------------------------------------------------------------------------------------------------------------------------

-- TITLE
CREATE TABLE TITLE
(
    WORKER_REF_ID INT,
    WORKER_TITLE VARCHAR(100),
    AFFECTED_FROM DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
REFERENCES WORKER(WORKER_ID)
ON DELETE CASCADE
);

INSERT INTO TITLE
    (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM)
VALUES
    (1, 'Manager', '2023-09-15 09:00:00'),
    (2, 'Developer', '2023-09-15 10:30:00'),
    (8, 'Accountant', '2023-09-15 11:45:00'),
    (5, 'Marketing Specialist', '2023-09-15 13:15:00'),
    (4, 'Sales Representative', '2023-09-15 14:30:00'),
    (7, 'Developer', '2023-09-15 15:45:00'),
    (6, 'Accountant', '2023-09-15 17:00:00'),
    (9, 'Manager', '2023-09-15 18:15:00'),
    (3, 'Accountant', '2023-09-18 19:15:00');

SELECT *
FROM TITLE;

-- --------------------------------------------------------------------------------------------------------------------------------

-- PRACTICE QUESTIONS

-- 1. WRITE SQL QUERY TO FETCH "FIRST NAME" FROM WORKER TABLE USING ALIAS NAME AS "WORKER_NAME"

SELECT FIRST_NAME AS WORKER_NAME
FROM WORKER;

-- 2. WRITE SQL QUERY TO FETCH "FIRST NAME" FROM WORKER TABLE IN UPPER CASE & LOWER CASE.

SELECT UPPER(FIRST_NAME)
FROM WORKER;
SELECT LOWER(FIRST_NAME)
FROM WORKER;

-- 3. WRITE SQL QUERY TO FETCH UNIQUE VALUES OF "DEPARTMENT" FROM WORKER TABLE.

SELECT DISTINCT DEPARTMENT
FROM WORKER;

-- 4. WRITE AN SQL QUERY TO PRINT THE FIRST THREE CHARACTERS OF "FIRST_NAME" FROM WORKER TABLE IN UPPER CASE.

SELECT UPPER(SUBSTRING(FIRST_NAME, 1, 3))
FROM WORKER;

-- 5. WRITE AN SQL QUERY TO FIND THE POSITION OF THE ALPHABET ('h') IN THE FIRST NAME COLUMN 'John' FROM WORKER TABLE.

SELECT INSTR(FIRST_NAME, 'h')
FROM WORKER
WHERE FIRST_NAME = 'John';

-- 6. WRITE AN SQL QUERY TO PRINT THE FIRST NAME FROM WORKER TABLE AFTER REMOVING WHITE SPACES FROM RIGHT SIDE.

SELECT RTRIM(FIRST_NAME)
FROM WORKER;

-- 7. WRITE AN SQL QUERY TO PRINT THE DEPARTMENT FROM WORKER TABLE AFTER REMOVING WHITE SPACES FROM LEFT SIDE.

SELECT LTRIM(FIRST_NAME)
FROM WORKER;

-- 8. WRITE AN SQL QUERY THAT FETCHES THE UNIQUE VALUES OF DEPARTMENT FROM WORKER TABLE AND PRINTS ITS LENGTH.

SELECT DISTINCT DEPARTMENT, LENGTH(DEPARTMENT)
FROM WORKER;

-- 9.  WRITE AN SQL QUERY TO PRINT THE FIRST_NAME FROM WORKER TABLE AFTER REPLACING 'a' WITH 'A'.

SELECT REPLACE(FIRST_NAME, 'a','A')
FROM WORKER;

-- 10. WRITE AN SQL QUERY TO PRINT THE FIRST_NAME AND LAST_NAME FROM WORKER TABLE INTO A SINGLE COLUMN COMPLETE_NAME SPACE CHAR SHOULD SEPERATE THEM.

SELECT CONCAT(FIRST_NAME,' ' ,LAST_NAME) AS COMPLETE_NAME
FROM WORKER;

-- 11. WRITE AN SQL QUERY TO PRINT ALL WORKER DETAILS FROM WORKER TABLE ORDER BY FIRST_NAME ASCENDING & DESCENDING.

SELECT *
FROM WORKER
ORDER BY FIRST_NAME;
SELECT *
FROM WORKER
ORDER BY FIRST_NAME DESC;

-- 12. WRITE AN SQL QUERY TO PRINT ALL WORKER DETAILS FROM WORKER TABLE ORDER BY FIRST_NAME ASCENDING AND DEPARTMENT DESCENDING.

SELECT *
FROM WORKER
ORDER BY FIRST_NAME, DEPARTMENT DESC;

-- 13. WRITE AN SQL QUERY TO PRINT DETAILS FOR WORKER WITH FIRST_NAME AS "Emily" AND "Michael" FROM WORKER TABLE.

SELECT *
FROM WORKER
WHERE FIRST_NAME IN('Emily', 'Michael');

-- 14. WRITE AN SQL QUERY TO PRINT DETAILS OF WORKER EXCLUDING FIRST_NAME AS "Emily" AND "Michael" FROM WORKER TABLE.

SELECT *
FROM WORKER
WHERE FIRST_NAME NOT IN ('Emily', 'Michael');

-- 15. WRITE AN SQL QUERY TO PRINT DETAILS OF WORKER WITH DEPARTMENT NAME AS 'ADMIN%'.

SELECT *
FROM WORKER
WHERE DEPARTMENT LIKE 'ADMIN%';

-- 16. WRITE AN SQL QUERY TO PRINT DETAILS OF WORKER WHOSE FIRST_NAME CONTAINS 'a'.

SELECT *
FROM WORKER
WHERE FIRST_NAME LIKE '%a%';

-- 17. 