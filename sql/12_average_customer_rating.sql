/*
Project: Metrocar — Product Analytics Case
Query: Average Customer Satisfaction Rating
Author: Vlad Kiichenko

Purpose:
Calculate the overall average customer rating
to assess general user satisfaction with the product.
*/

-- Business Question:
-- What is the overall average customer rating?

SELECT
    ROUND(AVG(r.rating), 2) AS avg_customer_satisfaction
FROM reviews r;

-- Notes:
-- rating scale is assumed to be numeric (e.g., 1–5)
-- this metric provides a high-level view of customer satisfaction
