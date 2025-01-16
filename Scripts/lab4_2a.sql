/*
select salesman_id, department_name, p.product_name 
from departments d, products p, orders o, order_items oi, employees e
where o.salesman_id = e.employee_id 
	and oi.product_id = p.product_id 
	and e.department_id = d.department_id
	and oi.order_id = o.order_id 
order by salesman_id;
*/

select e.employee_id as salesman_id, d.department_name, p.product_name
from employees e
	inner join departments d on e.department_id = d.department_id
	inner join orders o on e.employee_id = o.salesman_id
	inner join order_items oi on o.order_id = oi.order_id
	inner join products p on oi.product_id = p.product_id
order by e.employee_id;
