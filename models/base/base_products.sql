{{
    config(
        materialized='table'
    )
}}

select 
    *,
    {{ convert_currency("price_in_euros", from='EUR', to='USD') }} as price_in_usd
from {{ source('raw', 'products') }}