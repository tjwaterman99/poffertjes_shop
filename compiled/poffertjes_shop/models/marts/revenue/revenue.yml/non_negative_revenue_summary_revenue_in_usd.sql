

with validation as (

    select
        revenue_in_usd as target_field

    from "poffertjes_shop"."public"."revenue_summary"

),

validation_errors as (

    select
        target_field

    from validation
    where target_field < 0

)

select *
from validation_errors

