{% macro create_or_replace_table_raw_customers() %}

{% set sql %}
drop table if exists raw_customers;
create table raw_customers (
    customer_id int
);

insert into raw_customers 
    (customer_id) 
values 
    (1), 
    (2), 
    (3); 
{% endset %}

{% do run_query(sql) %}

{% endmacro %}