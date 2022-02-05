{% macro convert_currency(amount, from, to='USD') %}

round({{ amount }} * {{ var('exchange_rates')[from] }} / {{ var('exchange_rates')[to] }}, 5)

{% endmacro %}