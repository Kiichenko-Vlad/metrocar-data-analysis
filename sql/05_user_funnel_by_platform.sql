/*
Project: Metrocar — Product Analytics Case
Query: User Funnel by Platform
Author: Vlad Kiichenko

Purpose:
Compare funnel progression across platforms (iOS / Android / Web)
to identify performance differences by acquisition channel.
*/

-- Business Question:
-- How does user conversion differ by platform?

SELECT
    ad.platform AS platform,
    COUNT(DISTINCT ad.app_download_key) AS app_downloads,
    COUNT(DISTINCT s.user_id) AS signups,
    COUNT(DISTINCT 
            CASE
              WHEN rr.ride_id IS NOT NULL THEN s.user_id
            END) AS ride_requested,
    COUNT(DISTINCT 
            CASE
              WHEN rr.dropoff_ts IS NOT NULL THEN s.user_id
            END) AS ride_completed
FROM app_downloads ad
LEFT JOIN signups s
    ON ad.app_download_key = s.session_id
LEFT JOIN ride_requests rr
    ON s.user_id = rr.user_id
GROUP BY 1
ORDER BY platform;

-- Notes:
-- app_downloads: unique installs per platform
-- signups: users who registered after install
-- ride_requested: users who requested at least one ride
-- ride_completed: users who completed at least one ride
