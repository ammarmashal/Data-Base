#Fill emp_manager with data about employees, the number of the department they are working in, and their managers.
use employees;
CREATE TABLE emp_manager (
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    manager_no INT(11) NOT NULL
);
insert into  emp_manager select U.* from   (select A.* from (select e.emp_no as emp_no ,min( d.dept_no) as dept_no , 
(select dm.emp_no from dept_manager dm where emp_no =110022)as manager_no
from employees e join dept_emp d on e.emp_no =d.emp_no
where e.emp_no <=10020 
group by e.emp_no
order by e.emp_no
) as A
union select B.* from   (select e.emp_no as emp_no ,min( d.dept_no) as dept_no , 
(select dm.emp_no from dept_manager dm where dm.emp_no =110039)as manager_no
from employees e join dept_emp d on e.emp_no =d.emp_no
where e.emp_no >10020 and e.emp_no <=10040 
group by e.emp_no
order by e.emp_no
) as B
union select C .* from (select e.emp_no as emp_no ,min(d.dept_no)as dept_no ,(select emp_no from dept_manager where emp_no =110039)as manager_no
from employees e
join dept_manager d on e.emp_no =d.emp_no
where e.emp_no =110022
group by e.emp_no
order by e.emp_no
) as C
union select D .* from (select e.emp_no as emp_no ,min(d.dept_no)as dept_no ,(select emp_no from dept_manager where emp_no =110022 )as manager_no
from employees e
join dept_manager d on e.emp_no =d.emp_no
where e.emp_no =110039
group by e.emp_no
order by e.emp_no
) as D
 )as U;

select * from emp_manager;