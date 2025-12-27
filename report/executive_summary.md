# 📊 Metrocar — Product Analytics Executive Report

## 1) Executive Summary

This report evaluates Metrocar’s performance across the full ride lifecycle — from app download and ride request to completion, payment, and customer feedback.

Metrocar demonstrates **strong demand and healthy monetization**; however, **operational reliability is the primary constraint on performance**. Analysis of both **user-level** and **ride-level** conversion funnels shows that drop-offs are not driven by onboarding, but by **execution and capacity limitations after demand has already been expressed**.

To clearly distinguish between **user intent** and **operational execution**, two complementary funnel views are used:

- **User Conversion Funnel**  
  Users successfully progress through onboarding and request rides, but a **significant drop-off occurs after rides are accepted**, indicating that many users fail to reach ride completion despite confirmed intent.

![Figure 1 — User Conversion Funnel](https://github.com/Kiichenko-Vlad/metrocar-data-analysis/blob/main/dashboards/images/fig_01_user_funnel.png)

- **Ride Conversion Funnel**  
  The largest loss occurs **earlier in the process**, between ride request and acceptance, pointing to **supply, matching, or capacity constraints** that prevent requests from being fulfilled.

![Figure 2 — Ride Conversion Funnel](https://github.com/Kiichenko-Vlad/metrocar-data-analysis/blob/main/dashboards/images/fig_02_ride_funnel.png)

Together, these views demonstrate that **demand is present**, but **service delivery breaks at different stages depending on the level of analysis** — first during ride matching, and later during ride execution.


---

## 2) Key Product Metrics Snapshot

The following metrics provide a high-level snapshot of overall product health and establish a baseline for deeper analysis in subsequent sections:

- **Completion Rate:** 58.0% — moderate, indicating friction after the request stage  
- **Cancellation Rate:** 42.0% — high and the primary operational risk metric  
- **Avg Time to Accept:** ~6.9 minutes — acceptable on average, but sensitive to peak demand  
- **Avg Revenue per Ride:** ~$21 — stable monetization across the platform  
- **Ratings:** High (4–5) 50.5% vs Low (1–2) 39.5% — uneven and polarized user experience  

**Overall assessment:**  
Metrocar is commercially healthy, but elevated cancellations and inconsistent experience represent a meaningful risk to long-term retention. These metrics set the context for the time-based and operational analyses that follow.


---

## 3) Funnel & Drop-Off Analysis

### What’s happening
- The largest losses occur **after a ride is requested**, not during onboarding.
- Ride demand follows a clear daily pattern, with two dominant peak periods:
  - **Morning peak:** 08:00–09:00  
  - **Evening peak:** 16:00–18:00
- During these peak hours:
  - Ride requests increase sharply
  - Acceptance and completion do not scale proportionally
  - The gap between requested and completed rides widens

![Figure 3 — Ride Requests, Acceptances, and Completions by Hour](https://github.com/Kiichenko-Vlad/metrocar-data-analysis/blob/main/dashboards/images/fig_03_rides_by_hour.png)
  
- Conversion rates from **request to accept** decline during peak windows and vary by weekday, indicating recurring stress points rather than isolated incidents.

![Figure 4 — Request to Accept Conversion Rate by Weekday and Hour](https://github.com/Kiichenko-Vlad/metrocar-data-analysis/blob/main/dashboards/images/fig_04_request_accept_heatmap.png)

### What it means
User intent remains consistently strong throughout the day. However, the system struggles to absorb peak demand, pointing to **capacity, matching, or operational execution constraints** rather than demand-side issues.

### Product implication
Improving execution reliability during peak hours represents a **high-leverage opportunity**. Even modest improvements in peak-hour acceptance and completion rates would yield a disproportionate impact on overall performance and customer experience.


---

## 4) Platform Performance

### Volume contribution
Platform-level analysis shows that completed rides are distributed unevenly across platforms.  
**iOS accounts for the majority of completed rides (≈61%)**, followed by **Android (≈29%)**, while **Web represents a smaller but still meaningful share (≈10%)** of total completed trips.

This distribution reflects differences in user adoption and usage patterns rather than execution quality.

![Figure 5 — Platform Contribution to Completed Rides](https://github.com/Kiichenko-Vlad/metrocar-data-analysis/blob/main/dashboards/images/fig_05_platform_contribution.png)

### Revenue efficiency
Average revenue per ride remains consistent across platforms at approximately **$21**, indicating no meaningful monetization differences between iOS, Android, and Web users.

### Interpretation
Platform differences primarily explain **volume**, not **performance efficiency**. There is no evidence that a specific platform systematically underperforms in ride completion outcomes.

---

## 5) Age Group Perspective

Analysis by age group shows that **ride completion rates are remarkably consistent across all segments**. Completion ranges narrowly between **~57% and ~59%**, with no age group exhibiting a significantly better or worse outcome.

Even the *Unknown* age category follows the same overall pattern, suggesting that demographic factors do not materially influence ride completion behavior.

![Figure 6 — Ride Completion Rate by Age Group](https://github.com/Kiichenko-Vlad/metrocar-data-analysis/blob/main/dashboards/images/fig_06_completion_by_age.png)

### Interpretation
User age does not appear to be a primary driver of cancellations or incomplete rides. Performance differences are minimal and statistically insignificant when compared to time-based or operational factors.

---

## Summary Insight (Platforms & Age)

**Neither platform nor age segment explains the observed performance issues.**  
Operational reliability and time-based capacity constraints remain the dominant drivers of cancellations and incomplete rides.

---

## 6) Customer Satisfaction & Ratings

While operational metrics highlight where performance degrades, customer ratings reveal **how users experience these failures**.

Rating distribution shows a **highly polarized pattern**:
- **Positive ratings (4–5 stars)** account for just over half of all reviews
- **Negative ratings (1–2 stars)** represent a critically large share
- **Neutral ratings (3 stars)** are relatively rare

This polarization indicates that users tend to experience Metrocar rides as either **very good or very poor**, rather than consistently average.

![Figure 7 — Rating Distribution (1–5)](https://github.com/Kiichenko-Vlad/metrocar-data-analysis/blob/main/dashboards/images/fig_07_rating_distribution.png)

*Nearly 40% of customer feedback falls into the lowest rating bucket (1–2), indicating a highly polarized user experience rather than consistent service quality.


### Interpretation
Such a distribution is a strong signal of **inconsistent service delivery**. When execution performs well, users are satisfied; however, failures during peak or stressed conditions lead to sharply negative experiences.

Importantly, this insight would be **missed by looking only at average ratings**, which mask the underlying volatility in user experience.

### Product implication
High rating polarization poses a direct risk to:
- user trust  
- repeat usage  
- long-term retention  

Reducing the frequency of poor experiences—particularly during peak demand periods—may be more impactful than marginally improving already successful rides.


---

## 7) Strategic Conclusions

1. Demand for Metrocar rides is strong, but execution quality is uneven.
2. Cancellations and unfulfilled rides are the primary performance bottlenecks.
3. Monetization is stable and consistent across platforms.
4. Customer ratings reveal experience volatility that is not visible in average operational metrics.
5. Peak-hour reliability represents the single highest-impact improvement opportunity.


---

## 8) Recommendations

### Short-term (operational control)
- Increase driver availability and matching capacity during peak hours
- Monitor acceptance SLA breaches and trigger rapid operational interventions
- Flag high-risk cancellation windows in real time (weekday × hour)

### Mid-term (experience consistency)
- Focus on reducing the share of “bad rides,” not just optimizing average performance
- Use low ratings (1–2) as an early warning signal for operational failures
- Investigate patterns behind low-rated rides (time window, platform, fulfillment issues)

### Long-term (system alignment)
- Align operational KPIs with customer satisfaction outcomes
- Shift optimization focus from ride volume toward **experience reliability**


---

## 9) Final Assessment

Metrocar is a commercially viable and scalable product, but growth is constrained by operational reliability and inconsistent execution during peak demand periods. Improving peak-hour performance and reducing the frequency of poor user experiences offers the highest leverage for sustainable retention and long-term product health.
