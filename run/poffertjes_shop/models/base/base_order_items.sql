

  create  table "poffertjes_shop"."public"."base_order_items__dbt_tmp"
  as (
    

select *
from "poffertjes_shop"."public"."raw_order_items"
  );