#  SQL Subqueries nested in SELECT and FROM - solution 1

DROP TABLE IF EXISTS emp_manager_1;

CREATE TABLE emp_manager_1 (

   emp_no INT(11) NOT NULL,

   dept_no CHAR(4) NULL,

   manager_no INT(11) NOT NULL

);