/*
Project: Metrocar — Product Analytics Case
Query: Unpaid Completed Trips by Platform
Author: Vlad Kiichenko

Purpose:
Identify completed rides that were not successfully paid
to quantify potential revenue leakage by platform.
*/

-- Business Question:
-- How many completed rides were not successfully paid,
-- and does this differ by platform?

WITH payment_status_per_ride AS (
    SELECT
        rr.ride_id,
        ad.platform,
        t.charge_status
    FROM transactions t
    JOIN ride_requests rr
        ON t.ride_id = rr.ride_id
    JOIN signups s
        ON rr.user_id = s.user_id
    JOIN app_downloads ad
        ON s.session_id = ad.app_download_key
    WHERE rr.dropoff_ts IS NOT NULL
)

SELECT
    COALESCE(platform, 'ALL') AS platform,
    COUNT(ride_id) AS total_completed_trips,
    COUNT(CASE
            WHEN charge_status <> 'Approved' THEN ride_id
          END) AS unpaid_trips
FROM payment_status_per_ride
GROUP BY ROLLUP(platform)
ORDER BY
    CASE
        WHEN platform IS NULL THEN 2
        ELSE 1
    END,
    platform;

-- Notes:
-- total_completed_trips: rides that were successfully completed
-- unpaid_trips: completed rides with unsuccessful or missing payment
-- This metric highlights potential revenue leakage.
