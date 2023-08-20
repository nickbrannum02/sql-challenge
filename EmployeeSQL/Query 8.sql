select last_name, count(last_name) as Frequency
from employees
group by last_name
order by count(last_name) desc