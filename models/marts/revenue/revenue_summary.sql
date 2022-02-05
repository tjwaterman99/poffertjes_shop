{{
    config(
        materialized='table'
    )
}}

select 
    *,
    quantity * price_in_euros as revenue_in_euros,
    quantity * price_in_usd as revenue_in_usd
from {{ ref('order_items') }}