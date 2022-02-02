

  create  table "poffertjes_shop"."public"."base_products__dbt_tmp"
  as (
    

select *
from "poffertjes_shop"."public"."raw_products"
  );