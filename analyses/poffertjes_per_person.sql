select
    orders.customer_contact,
    sum(orders.quantity)
from {{ ref('order_items') }} orders
group by 1