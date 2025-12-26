/*
Project: Metrocar — Product Analytics Case
Query: Ride Volume & Outcomes by Weekday and Hour
Author: Vlad Kiichenko

Purpose:
Analyze ride demand and outcomes by time of day
to identify peak hours and potential operational bottlenecks.
*/

-- Business Question:
-- How do ride requests, completions, and cancellations vary
-- by weekday and hour of day?

SELECT
    EXTRACT(ISODOW FROM rr.request_ts) AS weekday,
    EXTRACT(HOUR FROM rr.request_ts) AS hour_of_day,
    COUNT(rr.ride_id) AS requested_rides,
    COUNT(CASE
            WHEN rr.dropoff_ts IS NOT NULL THEN rr.ride_id
          END) AS completed_rides,
    COUNT(CASE
            WHEN rr.cancel_ts IS NOT NULL THEN rr.ride_id
          END) AS cancelled_rides
FROM ride_requests rr
GROUP BY 1, 2
ORDER BY weekday, hour_of_day;

-- Notes:
-- weekday: ISO day of week (1 = Monday, 7 = Sunday)
-- hour_of_day: hour when the ride was requested (0–23)
-- requested_rides: total ride requests
-- completed_rides: rides successfully completed
-- cancelled_rides: rides cancelled by user or system
