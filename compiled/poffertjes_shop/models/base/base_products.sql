

select 
    *,
    

round(price_in_euros * 0.87 / 1.0, 5)

 as price_in_usd
from "poffertjes_shop"."public"."raw_products"