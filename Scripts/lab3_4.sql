select product_id, count(*) as sold
from order_items oi 
group by product_id
having count(*) < 10
order by product_id 