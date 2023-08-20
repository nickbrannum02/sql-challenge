select d.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name
from employees e
inner join dept_manager dm on dm.emp_no=e.emp_no
inner join departments d on d.dept_no=dm.dept_no
order by d.dept_no