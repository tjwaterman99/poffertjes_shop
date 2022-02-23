{% test non_negative(model, column_name) %}

with validation as (

    select
        {{ column_name }} as target_field

    from {{ model }}

),

validation_errors as (

    select
        target_field

    from validation
    where target_field < 0

)

select *
from validation_errors

{% endtest %}