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

![Figure 6 — Platform Contribution to Completed Rides](dashboards/images/fig_06_platform_contribution.png)

### Revenue efficiency
Average revenue per ride remains consistent across platforms at approximately **$21**, indicating no meaningful monetization differences between iOS, Android, and Web users.

### Interpretation
Platform differences primarily explain **volume**, not **performance efficiency**. There is no evidence that a specific platform systematically underperforms in ride completion outcomes.

---

## 5) Age Group Perspective

Analysis by age group shows that **ride completion rates are remarkably consistent across all segments**. Completion ranges narrowly between **~57% and ~59%**, with no age group exhibiting a significantly better or worse outcome.

Even the *Unknown* age category follows the same overall pattern, suggesting that demographic factors do not materially influence ride completion behavior.

![Figure 7 — Ride Completion Rate by Age Group](dashboards/images/fig_07_completion_by_age.png)

### Interpretation
User age does not appear to be a primary driver of cancellations or incomplete rides. Performance differences are minimal and statistically insignificant when compared to time-based or operational factors.

---

## Summary Insight (Platforms & Age)

**Neither platform nor age segment explains the observed performance issues.**  
Operational reliability and time-based capacity constraints remain the dominant drivers of cancellations and incomplete rides.

---

## 6) Customer Satisfaction
Customer feedback is highly polarized:
- **Positive (4–5):** 50.5%  
- **Negative (1–2):** 39.5%  
- **Neutral (3):** ~10%  

This distribution indicates inconsistent service delivery rather than an “average quality” experience.

**Product risk:**  
Such polarization undermines trust, repeat usage, and long-term retention — even when revenue metrics appear stable.

![Figure 6 — Rating Distribution (1–5)](dashboards/images/fig_06_rating_distribution.png)

---

## 7) Strategic Conclusions
1. Demand is strong, but execution is uneven.  
2. Cancellations are the primary performance bottleneck.  
3. Monetization is stable across platforms.  
4. Ratings expose volatility not visible in averages.  
5. Peak-hour reliability is the highest-impact improvement area.

---

## 8) Recommendations
### Short-term (operational control)
- Increase peak-hour driver availability and matching capacity  
- Monitor acceptance SLA breaches and trigger interventions  
- Flag high-risk cancellation windows in real time (weekday × hour)

### Mid-term (consistency focus)
- Reduce the share of “bad rides,” not just optimize averages  
- Use low ratings (1–2) as an early warning signal  
- Investigate patterns behind low-rated rides (time window, platform, fulfillment issues)

### Long-term (system alignment)
- Align operational KPIs with customer satisfaction metrics  
- Shift from volume optimization toward **experience reliability**

---

## 9) Final Assessment
Metrocar is commercially viable and scalable, but growth is constrained by operational reliability and inconsistent user experience. Stabilizing peak-hour performance and reducing the share of “very bad” experiences represents the highest-leverage path toward sustainable retention and long-term product health.

## Final Conclusions & Recommendations

### Key Takeaways
- **Cancellations and unfulfilled rides are the primary bottlenecks**, not user acquisition or onboarding.
- **Operational stress is time-dependent**, with performance degradation concentrated during peak demand periods.
- **Platform differences explain volume distribution**, while **revenue efficiency remains stable** across platforms.
- **Customer experience is inconsistent**, contributing to highly polarized ratings.

### Strategic Focus
The highest-leverage opportunity for Metrocar is improving **operational reliability during peak hours** and stabilizing the **end-to-end ride execution experience**, rather than optimizing acquisition or pricing.

