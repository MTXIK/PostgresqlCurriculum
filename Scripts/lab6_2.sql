with order_totals as (
    select
        o.salesman_id,
        sum(oi.quantity * oi.unit_price) as total_sales
    from orders o
    join order_items oi on o.order_id = oi.order_id
    group by o.salesman_id
),
employee_sales as (
    select
        e.employee_id,
        coalesce(ot.total_sales, 0) as total_sales
    from employees e
    left join order_totals ot on e.employee_id = ot.salesman_id
)
update emp
set rating_e = rating_e + 1
from employee_sales es
where emp.employee_id = es.employee_id
and
	es.total_sales > 1000000
and
	emp.rating_e < 5
returning *;
	
update emp
set layer = CASE 
        		WHEN rating_e = 5 THEN 'A'
       			WHEN rating_e IN (3, 4) THEN 'B'
        		ELSE 'C'
    		end
where emp.employee_id != 0
returning *;	