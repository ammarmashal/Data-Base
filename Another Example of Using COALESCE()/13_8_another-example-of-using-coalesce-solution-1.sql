# Another example of using COALESCE() - solution 1

SELECT

    dept_no,

    dept_name,

    COALESCE(dept_no, dept_name) AS dept_info

FROM

    departments_dup

ORDER BY dept_no ASC;