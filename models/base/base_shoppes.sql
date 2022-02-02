{{
    config(
        materialized='table'
    )
}}

select
    id as shoppe_id,
    location
from {{ ref('shoppes') }}