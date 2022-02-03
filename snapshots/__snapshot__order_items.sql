{% snapshot order_items_snapshot() %}

{{
    config(
        strategy='timestamp',
        updated_at='updated_at',
        unique_key="order_id::varchar || product_id::varchar",
        target_schema='poffertjes_snapshots'
    )
}}

select *
from {{ source("raw", "order_items") }}

{% endsnapshot %}