# Data

This folder contains analysis-ready CSV datasets exported from SQL queries
and used as data sources for Tableau dashboards.

Each CSV corresponds to a specific analytical question and is fully reproducible
using SQL scripts from the `/sql` directory.

## Datasets overview

| File | Description |
|-----|------------|
| funnel_overall.csv | Overall user funnel across all platforms |
| ride_funnel.csv | Ride-level funnel from request to completion |
| rides_by_weekday_hour.csv | Ride volume by weekday and hour |
| avg_time_to_accept_by_time.csv | Average driver acceptance time by time of day |
| user_funnel_by_platform.csv | User funnel segmented by platform |
| user_funnel_by_age_platform.csv | User funnel by age group and platform |
| rides_by_platform_weekday_hour.csv | Ride volume by platform, weekday, and hour |
| ride_completion_by_platform.csv | Ride completion rate by platform |
| total_revenue_by_platform.csv | Total revenue segmented by platform |
| avg_revenue_per_trip_by_platform.csv | Average revenue per completed trip |
| unpaid_completed_trips_by_platform.csv | Completed trips without successful payment |
| average_customer_rating.csv | Overall average customer rating |
| rating_vs_payment_status.csv | Relationship between ratings and payment status |

## Notes
- All datasets are aggregated and analysis-ready.
- Raw transactional data and full database dumps are intentionally excluded.
