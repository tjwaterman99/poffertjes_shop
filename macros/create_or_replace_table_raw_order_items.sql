{% macro create_or_replace_table_raw_order_items() %}

{% set sql %}
drop table if exists raw_order_items cascade;
create table raw_order_items (
    order_id int,
    product_id int,
    quantity int,
    created_at timestamp default now(),
    updated_at timestamp default now(),
    primary key ( order_id, product_id )
);

insert into raw_order_items 
    (order_id, product_id, quantity) 
values 
    (1, 1, 2), 
    (1, 2, 2), 
    (1, 3, 2),

    (2, 1, 3), 
    (2, 2, 2), 
    (2, 3, 2),

    (3, 1, 4), 
    (3, 2, 3), 
    (3, 3, 2),

    (4, 1, 1), 
    (4, 2, 1), 

    (5, 1, 1), 

    (6, 1, 2), 
    (6, 2, 2), 
    (6, 3, 2),

    (7, 1, 3), 
    (7, 2, 2), 
    (7, 3, 3),

    (8, 1, 4), 
    (8, 2, 2), 
    (8, 3, 2),

    (9, 1, 5), 
    (9, 2, 5), 
    (9, 3, 5),

    (10, 1, 1), 
    (10, 3, 1),

    (11, 1, 1), 
    (11, 2, 2),

    (12, 1, 3), 
    (12, 2, 2), 
    (12, 3, 2),

    (13, 1, 3), 
    (13, 2, 3), 
    (13, 3, 3),

    (14, 1, 4), 
    (14, 2, 2), 
    (14, 3, 1),

    (15, 1, 3), 
    (15, 2, 2), 
    (15, 3, 2)                                                     
; 
{% endset %}

{% do run_query(sql) %}

{% endmacro %}