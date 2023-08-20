select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employees e
join dept_emp de on de.emp_no=e.emp_no
join departments d on d.dept_no=de.dept_no
order by d.dept_no