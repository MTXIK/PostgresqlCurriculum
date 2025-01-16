create table Order_Items_Copy as
select
	*
from 
	order_items oi;

create table Order_Items_New as
select
	*
from 
	order_items oi
where order_id in (6, 8, 11, 12);

select * from order_items_new oin;
	
ALTER TABLE Order_Items_Copy
ADD Column rating_p integer;

UPDATE Order_Items_Copy as oic
set rating_p = (SELECT p.rating_p FROM Products p
WHERE p.product_id=oic.product_id)
returning *;

MERGE INTO Order_Items_Copy AS copy
USING Order_Items_New AS new
ON (copy.order_id = new.order_id AND copy.product_id = new.product_id)
WHEN MATCHED THEN
    UPDATE SET
        quantity = new.quantity + copy.quantity
WHEN NOT MATCHED THEN
    INSERT (order_id, item_id, product_id, quantity, unit_price)
    VALUES (new.order_id, new.item_id, new.product_id, new.quantity, new.unit_price)
returning copy.*;