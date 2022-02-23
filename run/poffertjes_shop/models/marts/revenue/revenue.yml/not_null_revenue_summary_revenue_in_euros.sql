select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from "poffertjes_shop"."public"."revenue_summary"
where revenue_in_euros is null



      
    ) dbt_internal_test