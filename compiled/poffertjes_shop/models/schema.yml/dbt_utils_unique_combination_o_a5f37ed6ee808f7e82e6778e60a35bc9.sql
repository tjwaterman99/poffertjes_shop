





with validation_errors as (

    select
        product_id, order_id
    from "poffertjes_shop"."public"."base_order_items"
    group by product_id, order_id
    having count(*) > 1

)

select *
from validation_errors


