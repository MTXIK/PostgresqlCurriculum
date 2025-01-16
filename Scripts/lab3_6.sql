select coalesce (cast(extract(year from order_date) as text), 'for all years') as years,
     coalesce (cast(customer_id as text), 'for all customers') as customer_id,
     count(*) as order_count
from orders
group by cube (extract (year from order_date), customer_id)
having count(*) > 4
order by years, customer_id
