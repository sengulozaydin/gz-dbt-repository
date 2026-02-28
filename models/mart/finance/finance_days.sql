select date_date,
round(sum(quantity),2) as total_quantity,
round(sum(revenue),2) as total_revenue,
ROUND(SUM(revenue) / NULLIF(COUNT(orders_id), 0), 2) AS average_basket,
round(sum(operatinal_margin),2) as operational_margin,
round(sum(purchase_cost),2) as purchase_cost,
round(sum(shipping_fee),2) as shipping_fee,
round(sum(logcost)+sum(ship_cost),2) as total_logistics_cost ,
count(orders_id) as nb_transactions
from {{ref('int_orders_operational')}} 
group by date_date 



