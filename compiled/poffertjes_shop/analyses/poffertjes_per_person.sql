select
    orders.customer_contact,
    sum(orders.quantity)
from "poffertjes_shop"."public"."order_items" orders
group by 1