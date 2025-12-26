/*
Project: Metrocar — Product Analytics Case
Query: Ride Funnel — Overall (Ride-level)
Author: Vlad Kiichenko

Purpose:
Measure how many rides reach each stage:
requested → accepted → completed → paid → reviewed.
*/

-- Business Question:
-- Out of all ride requests, how many get accepted, completed, paid, and reviewed?

SELECT
    COUNT(DISTINCT rr.ride_id) AS ride_requested,
    COUNT(DISTINCT rr.ride_id)
        FILTER (WHERE rr.accept_ts IS NOT NULL) AS ride_accepted,
    COUNT(DISTINCT rr.ride_id)
        FILTER (WHERE rr.dropoff_ts IS NOT NULL) AS ride_completed,
    COUNT(DISTINCT rr.ride_id)
        FILTER (
            WHERE rr.dropoff_ts IS NOT NULL 
              AND t.charge_status = 'Approved'
        ) AS ride_paid,
    COUNT(DISTINCT rr.ride_id)
        FILTER (WHERE r.review_id IS NOT NULL) AS ride_reviewed
FROM ride_requests rr
LEFT JOIN transactions t
    ON rr.ride_id = t.ride_id
LEFT JOIN reviews r
    ON rr.ride_id = r.ride_id;

-- Notes:
-- ride_requested: total rides requested (unique ride_id)
-- ride_accepted: rides with accept timestamp
-- ride_completed: rides with dropoff timestamp
-- ride_paid: completed rides with successful payment
-- ride_reviewed: rides that received a review
