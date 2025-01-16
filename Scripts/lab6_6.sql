create table Orders_Copy as
select
	*
from 
	orders o;
	
delete from orders_copy
where 
	status = 'Canceled'
and 
	extract(year from age(now(), order_date)) > 5
returning *;
