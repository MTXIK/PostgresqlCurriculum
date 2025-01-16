select e.employee_id, concat(e.first_name, ' ', e.last_name) as full_name, e.salary, 
       sum(oi.unit_price * oi.quantity) as total_sales,
       round(sum(oi.unit_price * oi.quantity) / e.salary, 1) as sales_to_salary
from employees e
	left join orders o on e.employee_id = o.salesman_id
	left join order_items oi on o.order_id = oi.order_id
group by e.employee_id
having sum(oi.unit_price * oi.quantity) > 50 * e.salary
