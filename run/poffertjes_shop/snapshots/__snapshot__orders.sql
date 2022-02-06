
      update "poffertjes_shop"."poffertjes_snapshots"."orders_snapshot"
    set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to
    from "orders_snapshot__dbt_tmp164153295979" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "poffertjes_shop"."poffertjes_snapshots"."orders_snapshot".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      and "poffertjes_shop"."poffertjes_snapshots"."orders_snapshot".dbt_valid_to is null;

    insert into "poffertjes_shop"."poffertjes_snapshots"."orders_snapshot" ("order_id", "customer_id", "shoppe_id", "created_at", "updated_at", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."order_id",DBT_INTERNAL_SOURCE."customer_id",DBT_INTERNAL_SOURCE."shoppe_id",DBT_INTERNAL_SOURCE."created_at",DBT_INTERNAL_SOURCE."updated_at",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_valid_from",DBT_INTERNAL_SOURCE."dbt_valid_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "orders_snapshot__dbt_tmp164153295979" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  