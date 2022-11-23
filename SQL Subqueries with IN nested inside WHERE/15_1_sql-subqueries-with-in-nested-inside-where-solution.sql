SELECT 
    *
FROM
    dept_manager
WHERE
    emp_no IN (SELECT 
            emp_no
        FROM
            employees
        WHERE
            hire_date BETWEEN '1990-01-01' AND '1995-01-01');
  
SELECT 
    *
FROM
    dept_manager m
WHERE
    exists(SELECT 
           m. emp_no
        FROM
            employees e
        WHERE
            e.hire_date BETWEEN '1990-01-01' AND '1995-01-01' and e.emp_no=m.emp_no);