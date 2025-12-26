/*
Project: Metrocar — Product Analytics Case
Query: Total Revenue by Platform
Author: Vlad Kiichenko

Purpose:
Calculate total revenue from completed rides with successful payments
and compare revenue contribution by platform.
*/

-- Business Question:
-- What is the total revenue from completed and successfully paid rides,
-- and how is it distributed across platforms?

WITH revenue_base AS (
    SELECT
        ad.platform,
        t.purchase_amount_usd
    FROM transactions t
    JOIN ride_requests rr
        ON t.ride_id = rr.ride_id
    JOIN signups s
        ON rr.user_id = s.user_id
    JOIN app_downloads ad
        ON s.session_id = ad.app_download_key
    WHERE t.charge_status = 'Approved'
      AND rr.dropoff_ts IS NOT NULL
)
  
SELECT
    COALESCE(platform, 'ALL') AS platform,
    SUM(purchase_amount_usd) AS total_revenue_usd
FROM revenue_base
GROUP BY ROLLUP(platform)
ORDER BY
    CASE
        WHEN platform IS NULL THEN 2
        ELSE 1
    END,
    platform;

-- Notes:
-- Only includes rides that were completed (dropoff_ts IS NOT NULL)
-- and successfully paid (charge_status = 'Approved').
-- ROLLUP(platform) adds an "ALL" total row across platforms.
