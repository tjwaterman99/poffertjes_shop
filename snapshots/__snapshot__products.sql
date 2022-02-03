{% snapshot base_products_snapshot() %}

{{
    config(
        strategy='timestamp',
        updated_at='updated_at',
        unique_key='product_id',
        target_schema='poffertjes_snapshots'
    )
}}

select *
from {{ source("raw", "products") }}

{% endsnapshot %}