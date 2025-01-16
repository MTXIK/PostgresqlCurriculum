create table Orders_1_Copy as
select
	*
from 
	orders_1 o;

select * from orders_1_copy oc;

create table Orders_2_Copy as
select
	*
from 
	orders_2 o;

select * from orders_2_copy oc;

merge into orders_1_copy ord1
using (
    select *
    from orders_2_copy
    where status = 'Shipped'
) ord2
on (ord1.order_id = ord2.order_id)
when matched then
    update set status = ord2.status
when not matched then
    insert (order_id, customer_id, status, salesman_id, order_date)
    values (ord2.order_id, ord2.customer_id, ord2.status, ord2.salesman_id, ord2.order_date);
   

