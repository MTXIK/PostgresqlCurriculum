with order_totals as (
    select
        o.*,
        sum(oi.quantity * oi.unit_price) as total_sum
    from orders o
    join order_items oi on o.order_id = oi.order_id
    where extract(month from o.order_date) = 5
      and extract(year from o.order_date) = 2017
    group by o.order_id, o.order_date
),
daily_max as (
    select
        order_date,
        max(total_sum) as max_total_sum
    from order_totals
    group by order_date
)
select
    ot.*
from order_totals ot
join daily_max dm on ot.order_date = dm.order_date and ot.total_sum = dm.max_total_sum
order by ot.order_date;
