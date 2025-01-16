select o.order_date, sum(unit_price * quantity) as total_sales
from orders o natural join order_items oi 
where extract(month from o.order_date) = 11 and extract(year from o.order_date) = 2019
group by o.order_date 
order by o.order_date 
