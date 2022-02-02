{{
    config(
        materialized='table'
    )
}}

select *
from {{ source('raw', 'products') }}