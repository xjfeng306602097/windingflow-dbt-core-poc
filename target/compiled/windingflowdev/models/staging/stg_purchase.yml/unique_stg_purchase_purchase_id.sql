
    
    

select
    purchase_id as unique_field,
    count(*) as n_records

from "postgres"."metrics_test"."stg_purchase"
where purchase_id is not null
group by purchase_id
having count(*) > 1


