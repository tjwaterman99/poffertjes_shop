{% macro create_or_replace_table_raw_products() %}

{% set sql %}
drop table if exists raw_products cascade;
create table raw_products (
    product_id int primary key,
    name varchar,
    price_in_euros int,
    created_at timestamp default now(),
    updated_at timestamp default now()
);

insert into raw_products 
    (product_id, name, price_in_euros) 
values 
    (1, 'poffertjes', 3), 
    (2, 'butter', 0.5), 
    (3, 'sugar', 0.5); 
{% endset %}

{% do run_query(sql) %}

{% endmacro %}