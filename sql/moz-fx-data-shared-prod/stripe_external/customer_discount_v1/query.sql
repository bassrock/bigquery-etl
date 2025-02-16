SELECT
  customer_id,
  id,
  _fivetran_synced,
  checkout_session,
  coupon_id,
  `end`,
  invoice_id,
  invoice_item_id,
  promotion_code,
  start,
  subscription_id,
FROM
  `moz-fx-data-bq-fivetran`.stripe.customer_discount
WHERE
  -- Fivetran used to have a bug where it synced subscription discounts as customer discounts.
  subscription_id IS NULL
