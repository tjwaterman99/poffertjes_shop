

  create  table "poffertjes_shop"."public"."base_shoppes__dbt_tmp"
  as (
    

select
    id as shoppe_id,
    location
from "poffertjes_shop"."public"."shoppes"
  );