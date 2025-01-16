select extract(month from order_date) as order_month, count(*) as order_count
from orders
where extract(year from order_date) = 2019
group by extract(month from order_date)
order by order_month