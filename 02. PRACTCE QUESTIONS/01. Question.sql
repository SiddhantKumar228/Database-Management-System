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


-- 2. WRITE SQL QUERY TO FETCH "FIRST NAME" FROM WORKER TABLE IN UPPER CASE & LOWER CASE.


-- 3. WRITE SQL QUERY TO FETCH UNIQUE VALUES OF "DEPARTMENT" FROM WORKER TABLE.


-- 4. WRITE AN SQL QUERY TO PRINT THE FIRST THREE CHARACTERS OF "FIRST_NAME" FROM WORKER TABLE IN UPPER CASE.


-- 5. WRITE AN SQL QUERY TO FIND THE POSITION OF THE ALPHABET ('h') IN THE FIRST NAME COLUMN 'John' FROM WORKER TABLE.


-- 6. WRITE AN SQL QUERY TO PRINT THE FIRST NAME FROM WORKER TABLE AFTER REMOVING WHITE SPACES FROM RIGHT SIDE.


-- 7. WRITE AN SQL QUERY TO PRINT THE DEPARTMENT FROM WORKER TABLE AFTER REMOVING WHITE SPACES FROM LEFT SIDE.


-- 8. WRITE AN SQL QUERY THAT FETCHES THE UNIQUE VALUES OF DEPARTMENT FROM WORKER TABLE AND PRINTS ITS LENGTH.


-- 9.  WRITE AN SQL QUERY TO PRINT THE FIRST_NAME FROM WORKER TABLE AFTER REPLACING 'a' WITH 'A'.


-- 10. WRITE AN SQL QUERY TO PRINT THE FIRST_NAME AND LAST_NAME FROM WORKER TABLE INTO A SINGLE COLUMN COMPLETE_NAME SPACE CHAR SHOULD SEPERATE THEM.


-- 11. WRITE AN SQL QUERY TO PRINT ALL WORKER DETAILS FROM WORKER TABLE ORDER BY FIRST_NAME ASCENDING & DESCENDING.


-- 12. WRITE AN SQL QUERY TO PRINT ALL WORKER DETAILS FROM WORKER TABLE ORDER BY FIRST_NAME ASCENDING AND DEPARTMENT DESCENDING.


-- 13. WRITE AN SQL QUERY TO PRINT DETAILS FOR WORKER WITH FIRST_NAME AS "Emily" AND "Michael" FROM WORKER TABLE.


-- 14. WRITE AN SQL QUERY TO PRINT DETAILS OF WORKER EXCLUDING FIRST_NAME AS "Emily" AND "Michael" FROM WORKER TABLE.


-- 15. WRITE AN SQL QUERY TO PRINT DETAILS OF WORKER WITH DEPARTMENT NAME AS 'ADMIN%'.


-- 16. WRITE AN SQL QUERY TO PRINT DETAILS OF WORKER WHOSE FIRST_NAME CONTAINS 'a'.


-- 17. WRITE AN SQL QUERY TO PRINT DETAILS OF WORKER WHOSE FIRST_NAME ENDS WITH 'a'.


-- 18. WRITE AN SQL QUERY TO PRINT DETAILS OF WORKER WHOSE FIRST_NAME ENDS WITH 'h' AND CONTAINS FIVE ALPHABETS.


-- 19. WRITE AN SQL QUERY TO PRINT DETAILS OF WORKER WHOSE SALARY LIES BETWEEN 50000 AND 55000.


-- 20. WRITE AN SQL QUERY TO PRINT DETAILS OF WORKER WHOSE HAVE JOINED IN FEB 2023.


-- 21. WRITE AN SQL QUERY TO FETCH COUNT OF EMPPLOYEES WORKING IN THE DEPARTMENT 'ADMIN'.


-- 22. WRITE AN SQL QUERY TO FETCH WORKER FULL NAME WITH SALARY >= 50000 AND <= 55000.


-- 23. WRITE AN SQL QUERY TO FETCH COUNT OF EMPPLOYEES WORKING IN EACH DEPARTMENT IN DESCENDING ORDER.


-- 24. WRITE AN SQL QUERY TO PRINT DETAILS OF THE WORKERS WHO ARE ALSO MANAGERS.


-- 25. Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.


-- 26. Write an SQL query to show only odd rows from a table.


-- 27. Write an SQL query to show only even rows from a table. 


-- 28. Write an SQL query to clone a new table from another table.


-- 29. Write an SQL query to fetch intersecting records of two tables.


-- 30. Write an SQL query to show records from one table that another table does not have.


-- 30. Write an SQL query to show records from one table that another table does not have.


-- 31. Write an SQL query to show the current date and time.


-- 32. Write an SQL query to show the top n (say 5) records of a table order by descending salary.


-- 33. Write an SQL query to determine the nth (say n=5) highest salary from a table.


-- 34. Write an SQL query to determine the 5th highest salary without using LIMIT keyword.


-- 35. Write an SQL query to fetch the list of employees with the same salary.


-- 36. Write an SQL query to show the second highest salary from a table using sub-query.


-- 37. Write an SQL query to show one row twice in results from a table.


-- 38. Write an SQL query to list worker_id who does not get bonus.


-- 39. Write an SQL query to fetch the first 50% records from a table.


-- 40. Write an SQL query to fetch the departments that have less than 4 people in it.


-- 41. Write an SQL query to show all departments along with the number of people in there.


-- 42. Write an SQL query to show the last record from a table.


-- 43. Write an SQL query to fetch the first row of a table.


-- 44. Write an SQL query to fetch the last five records from a table.


-- 45. Write an SQL query to print the name of employees having the highest salary in each department.


-- 46. Write an SQL query to fetch three max salaries from a table using co-related subquery


-- 47. Write an SQL query to fetch three min salaries from a table using co-related subquery


-- 48. Write an SQL query to fetch nth max salaries from a table.


-- 49. Write an SQL query to fetch departments along with the total salaries paid for each of them.


-- 50. Write an SQL query to fetch the names of workers who earn the highest salary.