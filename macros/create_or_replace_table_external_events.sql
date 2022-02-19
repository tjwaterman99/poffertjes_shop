{% macro create_or_replace_table_external_events() %}

{% set sql %}
drop table if exists external_events cascade;
create table external_events (
    event_id int,
    properties jsonb,
    created_at timestamp default now(),
    updated_at timestamp default now()
);
insert into external_events 
    (event_id, properties) 
values 
    (1, '{"event_name": "test"}')
{% endset %}

{% do run_query(sql) %}

{% endmacro %}