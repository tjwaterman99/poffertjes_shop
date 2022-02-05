

select
    orders.*,
    customers.contact,
    customers.name as customer_name,
    shoppes.location
from "poffertjes_shop"."public"."base_orders" orders
join "poffertjes_shop"."public"."base_customers" customers using (customer_id)
join "poffertjes_shop"."public"."base_shoppes" shoppes using (shoppe_id)