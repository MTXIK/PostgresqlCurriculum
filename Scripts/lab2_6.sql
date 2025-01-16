select order_id, order_date 
from orders
where extract(dow from order_date) = 0