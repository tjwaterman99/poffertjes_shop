{{
    config(
        materialized='view',
        tags=["internal"],
        enabled=False
    )
}}

select *
from {{ ref('employees') }}
