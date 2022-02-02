select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      





with validation_errors as (

    select
        product_id, order_id
    from "poffertjes_shop"."public"."base_order_items"
    group by product_id, order_id
    having count(*) > 1

)

select *
from validation_errors



      
    ) dbt_internal_test