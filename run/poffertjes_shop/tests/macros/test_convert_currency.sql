select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with expectations as (
    select * from ( 
        values (
            0.87,
            0.87 / 1.41
        )
    ) as t (eur_per_usd, eur_per_aud)
)

select *
from expectations
where 
    round(eur_per_usd, 5) <> 

round(1 * 0.87 / 1.0, 5)


    or round(eur_per_aud, 5) <> 

round(1 * 0.87 / 1.41, 5)


      
    ) dbt_internal_test