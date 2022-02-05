with expectations as (
    select * from ( 
        values (
            {{ var('exchange_rates')['EUR'] }},
            {{ var('exchange_rates')['EUR'] }} / {{ var('exchange_rates')['AUD'] }}
        )
    ) as t (eur_per_usd, eur_per_aud)
)

select *
from expectations
where 
    round(eur_per_usd, 5) <> {{ convert_currency(1, from='EUR') }}
    or round(eur_per_aud, 5) <> {{ convert_currency(1, from='EUR', to='AUD') }}