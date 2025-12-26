/*
Project: Metrocar — Product Analytics Case
Query: Ride Volume & Outcomes by Platform, Weekday, and Hour
Author: Vlad Kiichenko

Purpose:
Analyze ride demand, completions, and cancellations by time
and compare patterns across platforms (iOS / Android / Web).
*/

-- Business Question:
-- Do ride volume and outcomes vary by weekday/hour depending on platform?

SELECT
    ad.platform AS platform,
    EXTRACT(ISODOW FROM rr.request_ts) AS weekday,
    EXTRACT(HOUR FROM rr.request_ts) AS hour_of_day,
    COUNT(rr.ride_id) AS ride_requested,
    COUNT(CASE
            WHEN rr.dropoff_ts IS NOT NULL THEN rr.ride_id
          END) AS completed_rides,
    COUNT(CASE
            WHEN rr.cancel_ts IS NOT NULL THEN rr.ride_id
          END) AS cancelled_rides
FROM app_downloads ad
LEFT JOIN signups s
    ON ad.app_download_key = s.session_id
LEFT JOIN ride_requests rr
    ON s.user_id = rr.user_id
GROUP BY 1, 2, 3
ORDER BY platform, weekday, hour_of_day;

-- Notes:
-- weekday: ISO day of week (1 = Monday, 7 = Sunday)
-- hour_of_day: hour when the ride was requested (0–23)
-- ride_requested: total ride requests per segment
-- completed_rides: rides with dropoff timestamp
-- cancelled_rides: rides with cancellation timestamp
