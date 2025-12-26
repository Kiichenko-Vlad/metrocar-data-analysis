/*
Project: Metrocar — Product Analytics Case
Query: Funnel — Overall User Journey
Author: Vlad Kiichenko

Purpose:
Build a full user funnel from app download to ride review
and identify where the largest user drop-offs occur.
*/

-- Business Question:
-- How many users reach each stage of the ride lifecycle?

SELECT 
    COUNT(DISTINCT ad.app_download_key) AS app_downloads,
    COUNT(DISTINCT s.user_id) AS signups,
    COUNT(DISTINCT 
            CASE
                WHEN rr.ride_id IS NOT NULL THEN s.user_id
            END) AS ride_requested,
    COUNT(DISTINCT
            CASE
                WHEN rr.accept_ts IS NOT NULL THEN s.user_id
            END) AS ride_accepted,
    COUNT(DISTINCT
            CASE
                WHEN rr.dropoff_ts IS NOT NULL THEN s.user_id
            END) AS ride_completed,
    COUNT(DISTINCT 
            CASE
                WHEN rr.dropoff_ts IS NOT NULL AND t.charge_status = 'Approved' THEN s.user_id
            END) AS ride_paid,
    COUNT(DISTINCT 
            CASE
                WHEN r.ride_id IS NOT NULL THEN s.user_id
            END) AS ride_reviewed
FROM app_downloads ad
LEFT JOIN signups s
    ON ad.app_download_key = s.session_id
LEFT JOIN ride_requests rr
    ON s.user_id = rr.user_id
LEFT JOIN transactions t
    ON rr.ride_id = t.ride_id
LEFT JOIN reviews r
    ON rr.ride_id = r.ride_id;

-- Notes:
-- app_downloads → total installs
-- signups → registered users
-- ride_requested → at least one ride request
-- ride_accepted → driver accepted the ride
-- ride_completed → ride successfully finished
-- ride_paid → completed ride with successful payment
-- ride_reviewed → user left a review after the ride
