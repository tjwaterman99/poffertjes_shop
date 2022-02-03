{% macro create_or_replace_table_raw_customers() %}

{% set sql %}
drop table if exists raw_customers cascade;
create table raw_customers (
    customer_id int,
    contact varchar,
    name varchar,
    created_at timestamp default now(),
    updated_at timestamp default now()
);

insert into raw_customers 
    (customer_id, contact, name) 
values 
    (1, 'tom@waterman.com', 'tom'), 
    (2, 'alex@waterman.com', 'alex'), 
    (3, 'david@waterman.com', 'david')
; 
{% endset %}

{% do run_query(sql) %}

{% endmacro %}