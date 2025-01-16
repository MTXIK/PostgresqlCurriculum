WITH monthly_sales AS (
    SELECT
        EXTRACT(YEAR FROM o.order_date) AS order_year,
        EXTRACT(MONTH FROM o.order_date) AS order_month,
        SUM(oi.sum) AS total_sales
    FROM orders o
    JOIN (
        SELECT order_id, SUM(quantity * unit_price) AS sum
        FROM order_items
        GROUP BY order_id
    ) oi ON o.order_id = oi.order_id
    WHERE o.salesman_id = 152
    GROUP BY order_year, order_month
)
SELECT
    ms.order_year,
    ms.order_month,
    ms.total_sales
FROM monthly_sales ms
WHERE ms.total_sales = (
    SELECT MAX(total_sales)
    FROM monthly_sales
);
