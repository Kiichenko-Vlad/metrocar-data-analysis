/*
Project: Metrocar — Product Analytics Case
Query: User Funnel by Age Range and Platform
Author: Vlad Kiichenko

Purpose:
Compare user funnel progression across age groups and platforms
to identify behavioral differences and segments with higher drop-off.
*/

-- Business Question:
-- Do funnel conversion patterns differ by age range and platform?

SELECT
    COALESCE(s.age_range, 'unknown') AS age_range,
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
GROUP BY 1, 2
ORDER BY age_range, platform;

-- Notes:
-- age_range: user age segment (NULLs mapped to 'unknown')
-- platform: iOS / Android / Web
-- app_downloads: unique installs in the segment
-- signups: users who registered
-- ride_requested: users who requested at least one ride
-- ride_completed: users who completed at least one ride
