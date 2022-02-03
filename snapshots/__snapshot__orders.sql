{% snapshot orders_snapshot() %}

{{
    config(
        strategy='timestamp',
        updated_at='updated_at',
        unique_key='order_id',
        target_schema='poffertjes_snapshots'
    )
}}

select *
from {{ source("raw", "orders") }}

{% endsnapshot %}