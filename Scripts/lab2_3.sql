select *
from products
where (lower(product_name) like '%amd%') and not(lower(product_name) like '%ryzen%')
