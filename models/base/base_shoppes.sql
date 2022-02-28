{{
    config(
        materialized='table',
        tags=["internal"]
    )
}}

select
    id as shoppe_id,
    location
from {{ ref('shoppes') }}