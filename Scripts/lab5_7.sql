select 
    o.salesman_id
from 
    orders o
where 
    o.salesman_id != 179
group by 
    o.salesman_id
having 
    array_agg(distinct o.customer_id order by o.customer_id) = (
        select array_agg(distinct customer_id order by customer_id)
        from orders
        where salesman_id = 179
    );
--Возвращает входные значения, сведенные в массив. Если входные данные пустые, функция возвращает пустой массив.

with seller_179_customers as (
    select distinct customer_id
    from orders
    where salesman_id = 179
)
select 
    o.salesman_id
from 
    orders o
where 
    o.salesman_id != 179
group by 
    o.salesman_id
having 
    count(distinct o.customer_id) = (select count(*) from seller_179_customers)
    and
    count(distinct case 
                     when o.customer_id in 
	                     (select customer_id from seller_179_customers) 
		                  then o.customer_id 
                   	end) 
    = (select count(*) from seller_179_customers);

