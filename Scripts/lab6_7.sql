create table Order_Items_Copy2 as
select
	*
from 
	order_items oi;
	
ALTER TABLE Order_Items_Copy2
ADD Column rating_p integer;

UPDATE Order_Items_Copy2 as oic
set rating_p = (SELECT p.rating_p FROM Products p
WHERE p.product_id=oic.product_id)
returning *;

with emp_rating as (
    select
        o.order_id,
        e.rating_e
    from orders o
    join employees e on o.salesman_id = e.employee_id
)
delete from order_items_copy2 oic
using emp_rating er
where oic.order_id = er.order_id
  and oic.rating_p > er.rating_e
returning oic.*;

--testing
select
        o.order_id,
        e.rating_e
    from orders o
    join employees e on o.salesman_id = e.employee_id
    order by o.order_id 