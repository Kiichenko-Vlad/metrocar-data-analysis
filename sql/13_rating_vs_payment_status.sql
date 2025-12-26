/*
Project: Metrocar — Product Analytics Case
Query: Rating vs Payment Status
Author: Vlad Kiichenko

Purpose:
Analyze the relationship between customer ratings
and payment outcomes to identify patterns
between user satisfaction and payment success.
*/

-- Business Question:
-- Is there a relationship between ride ratings and payment status?

SELECT
    CASE
        WHEN r.rating = 1 THEN 'Low-1'
        WHEN r.rating = 2 THEN 'Low-2'
        WHEN r.rating = 3 THEN 'Middle-3'
        WHEN r.rating = 4 THEN 'Middle-4'
        WHEN r.rating = 5 THEN 'High-5'
        ELSE 'other_rating'
    END AS rating_bucket,
    COUNT(rr.ride_id) AS total_rides,
    CASE
        WHEN t.charge_status = 'Approved' THEN 'paid'
        ELSE 'unpaid'
    END AS charge_status
FROM reviews r
JOIN ride_requests rr
    ON r.ride_id = rr.ride_id
JOIN transactions t
    ON rr.ride_id = t.ride_id
WHERE rr.dropoff_ts IS NOT NULL
GROUP BY 1, 3;

-- Notes:
-- rating_bucket: grouped customer ratings
-- charge_status: paid vs unpaid rides
-- only completed rides are included in the analysis
-- helps assess whether poor ratings correlate with payment issues
