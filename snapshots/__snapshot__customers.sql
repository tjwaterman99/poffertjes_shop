{% snapshot customers_snapshot() %}

{{
    config(
        strategy='timestamp',
        updated_at='updated_at',
        unique_key='customer_id',
        target_schema='poffertjes_snapshots'
    )
}}

select *
from {{ source("raw", "customers") }}

{% endsnapshot %}