{{
    config(
        materialized='table'
    )
}}

select
    orders.*,
    customers.contact,
    customers.name as customer_name,
    shoppes.location
from {{ ref('base_orders') }} orders
join {{ ref('base_customers') }} customers using (customer_id)
join {{ ref('base_shoppes') }} shoppes using (shoppe_id)
