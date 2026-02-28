select m.date_date ,m.orders_id,m.revenue,m.purchase_cost,m.quantity,m.margin,
h.shipping_fee,h.logcost,h.ship_cost,
m.margin + h.shipping_fee -h.logcost - h.ship_cost
as operatinal_margin
from {{ref ('int_orders_margin')}} as m 
join {{ref ('stg_raw__ship')}} as h 
on m.orders_id = h.orders_id

