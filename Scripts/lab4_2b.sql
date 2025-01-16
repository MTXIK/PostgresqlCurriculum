select d.department_name, coalesce(p.product_name, 'Nothing sold')
from departments d
	left join employees e on d.department_id = e.department_id
	left join orders o on e.employee_id = o.salesman_id
	left join order_items oi on o.order_id = oi.order_id
	left join products p on oi.product_id = p.product_id
group by d.department_name, p.product_name
order by d.department_name
