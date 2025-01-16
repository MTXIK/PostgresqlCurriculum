--select p.product_name 
--from products p
--where upper(p.product_name) like '%CORE%'

select count(*)
from products pr
where upper(pr.product_name) like '%CORE%'