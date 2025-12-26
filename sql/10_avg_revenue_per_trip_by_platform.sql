/*
Project: Metrocar — Product Analytics Case
Query: Average Revenue per Trip by Platform
Author: Vlad Kiichenko

Purpose:
Calculate the average revenue per completed and successfully paid ride
and compare average check across platforms.
*/

-- Business Question:
-- What is the average revenue per trip, and how does it differ by platform?

WITH revenue_avg AS (
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
    AVG(purchase_amount_usd) AS average_revenue_per_trip_usd
FROM revenue_avg
GROUP BY ROLLUP(platform)
ORDER BY
    CASE
        WHEN platform IS NULL THEN 2
        ELSE 1
    END,
    platform;

-- Notes:
-- Average revenue is calculated only for completed rides
-- with successful payment (charge_status = 'Approved').
-- ROLLUP(platform) adds an overall average across platforms.
