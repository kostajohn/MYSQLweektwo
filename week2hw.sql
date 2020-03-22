select curdate();

desc titles;
desc employees;

select count(*), titles.title from employees
inner join titles on titles.emp_no = employees.emp_no where birth_date > "1965-01-01" group by title;

select curdate();
desc titles;
desc salaries;

select t.title, avg(salary) from salaries s 
inner join titles t on t.emp_no = s.emp_no 
group by title;


select curdate();
desc salaries;
desc employees;
desc dept_emp;

select d.dept_name, sum(salary) from dept_emp de
inner join departments d on d.dept_no = de.dept_no 
inner join salaries s on s.emp_no = de.emp_no
where s.from_date>= "1990-01-01" and s.to_date <="1992-12-31" and dept_name = "Marketing";

