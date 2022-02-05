

  create  table "poffertjes_shop"."public"."revenue_summary__dbt_tmp"
  as (
    

select 
    *,
    quantity * price_in_euros as revenue_in_euros,
    quantity * price_in_usd as revenue_in_usd
from "poffertjes_shop"."public"."order_items"
  );