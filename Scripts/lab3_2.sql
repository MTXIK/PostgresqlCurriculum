select extract(year from o.order_date) as order_year, count(*)
from orders o
where customer_id = 46
group by extract(year from o.order_date)
order by order_year