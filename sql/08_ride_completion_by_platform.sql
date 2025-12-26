/*
Project: Metrocar — Product Analytics Case
Query: Ride Completion by Platform
Author: Vlad Kiichenko

Purpose:
Measure ride completion performance across platforms
to identify differences in operational effectiveness.
*/

-- Business Question:
-- How does ride completion differ by platform?

SELECT
    ad.platform AS platform,
    COUNT(rr.ride_id) AS ride_requested,
    COUNT(CASE
            WHEN rr.dropoff_ts IS NOT NULL THEN rr.ride_id
          END) AS completed_rides
FROM app_downloads ad
LEFT JOIN signups s
    ON ad.app_download_key = s.session_id
LEFT JOIN ride_requests rr
    ON s.user_id = rr.user_id
GROUP BY 1
ORDER BY platform;

-- Notes:
-- ride_requested: total ride requests per platform
-- completed_rides: rides successfully completed
-- completion rate can be derived as completed_rides / ride_requested
