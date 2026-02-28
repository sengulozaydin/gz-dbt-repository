select 
f.date_date,
f.operational_margin-i.ads_cost as ads_margin,
f.average_basket,
f.operational_margin,
i.ads_cost,
i.impression,
i.click,
f.total_quantity,
f.total_revenue,
f.purchase_cost,
f.total_revenue-f.purchase_cost as margin ,
f.shipping_fee,
f.total_logistics_cost,
f.total_logistics_cost-f.shipping_fee as ship_cost 
from {{ ref('finance_days')}} as f
join {{ ref('int_campaigns') }} as i 
on f.date_date=i.date_date
