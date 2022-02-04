
      update "poffertjes_shop"."poffertjes_snapshots"."base_products_snapshot"
    set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to
    from "base_products_snapshot__dbt_tmp081821426835" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "poffertjes_shop"."poffertjes_snapshots"."base_products_snapshot".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      and "poffertjes_shop"."poffertjes_snapshots"."base_products_snapshot".dbt_valid_to is null;

    insert into "poffertjes_shop"."poffertjes_snapshots"."base_products_snapshot" ("product_id", "name", "price_in_euros", "created_at", "updated_at", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."product_id",DBT_INTERNAL_SOURCE."name",DBT_INTERNAL_SOURCE."price_in_euros",DBT_INTERNAL_SOURCE."created_at",DBT_INTERNAL_SOURCE."updated_at",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_valid_from",DBT_INTERNAL_SOURCE."dbt_valid_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "base_products_snapshot__dbt_tmp081821426835" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  