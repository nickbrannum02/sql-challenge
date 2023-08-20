select e.emp_no, e.first_name, e.last_name
from employees e
join dept_emp de on de.emp_no=e.emp_no
join departments d on d.dept_no=de.dept_no
where d.dept_name = 'Sales'