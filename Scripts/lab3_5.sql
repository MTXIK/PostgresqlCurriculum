select order_id, product_id, quantity, (quantity * unit_price) as total_sum_of_item, 
sum(quantity * unit_price) over (partition by order_id) as total_order_price
from order_items oi 
where order_id < 30