

with 

purchase_items as (
    select *
    from "postgres"."metrics_test"."stg_purchase"
),


renamed as (
    select purchase_id,
    number,
    tenant_id,
    app_id,
    sku,
    qty,
    amount,
    amount_rmb,
    unit,
    create_at,
    (amount * qty) as purchase_amount_usd
    from purchase_items
)

select * from renamed