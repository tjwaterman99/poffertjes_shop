{{
    config(
        materialized='table'
    )
}}

select
    order_items.quantity,
    orders.order_id,
    orders.created_at,
    products.product_id,
    products.name as product_name,
    products.price_in_euros,
    products.price_in_usd,
    customers.contact as customer_contact,
    customers.name as customer_name,
    shoppes.location
from {{ ref('base_order_items') }} order_items
join {{ ref('base_orders') }} orders using (order_id)
join {{ ref('base_customers') }} customers using (customer_id)
join {{ ref('base_shoppes') }} shoppes using (shoppe_id)
join {{ ref('base_products') }} products using (product_id)