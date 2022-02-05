{{
    config(
        materialized='table'
    )
}}

select *
from {{ ref('base_products') }}