
    
    

select
    shoppe_id as unique_field,
    count(*) as n_records

from "poffertjes_shop"."public"."base_shoppes"
where shoppe_id is not null
group by shoppe_id
having count(*) > 1


