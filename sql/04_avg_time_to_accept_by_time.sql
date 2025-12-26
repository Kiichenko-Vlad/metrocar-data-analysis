/*
Project: Metrocar — Product Analytics Case
Query: Average Time to Accept by Weekday and Hour
Author: Vlad Kiichenko

Purpose:
Measure how long users wait for a driver to accept a ride
depending on the time of day and day of week.
*/

-- Business Question:
-- At what times do users wait the longest for ride acceptance?

SELECT
    EXTRACT(ISODOW FROM rr.request_ts) AS weekday,
    EXTRACT(HOUR FROM rr.request_ts) AS hour_of_day,
    ROUND(AVG(EXTRACT(EPOCH FROM (rr.accept_ts - rr.request_ts)) / 60), 2) AS avg_minutes_to_accept
FROM ride_requests rr
WHERE rr.accept_ts IS NOT NULL
GROUP BY 1, 2
ORDER BY weekday, hour_of_day;

-- Notes:
-- avg_minutes_to_accept: average time (in minutes)
-- from ride request to driver acceptance
-- calculated only for accepted rides
