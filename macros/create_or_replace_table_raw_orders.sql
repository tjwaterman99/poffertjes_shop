{% macro create_or_replace_table_raw_orders() %}

{% set sql %}
drop table if exists raw_orders cascade;
create table raw_orders (
    order_id int primary key,
    customer_id int,
    shop_id int,
    created_at timestamp default now()
);

insert into raw_orders 
    (order_id, customer_id, shop_id) 
values 
    (1, 2, 1), 
    (2, 2, 1), 
    (3, 1, 1),
    (4, 2, 1), 
    (5, 2, 1), 
    (6, 1, 1),   
    (7, 2, 1), 
    (8, 2, 1), 
    (9, 1, 2),    
    (10, 3, 2), 
    (11, 2, 2), 
    (12, 3, 2),
    (13, 3, 2), 
    (14, 2, 2), 
    (15, 1, 2)       
; 
{% endset %}

{% do run_query(sql) %}

{% endmacro %}