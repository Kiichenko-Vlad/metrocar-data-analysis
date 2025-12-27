# 📊 Metrocar — Product Analytics Executive Report

## 1) Executive Summary

This report evaluates Metrocar’s performance across the full ride lifecycle — from app download and ride request to completion, payment, and customer feedback.

Metrocar demonstrates **strong demand and healthy monetization**; however, **operational reliability is the primary constraint on performance**. Analysis of both **user-level** and **ride-level** conversion funnels shows that drop-offs are not driven by onboarding, but by **execution and capacity limitations after demand has already been expressed**.

To clearly distinguish between **user intent** and **operational execution**, two complementary funnel views are used:

- **User Conversion Funnel**  
  Users successfully progress through onboarding and request rides, but a **significant drop-off occurs after rides are accepted**, indicating that many users fail to reach ride completion despite confirmed intent.

- **Ride Conversion Funnel**  
  The largest loss occurs **earlier in the process**, between ride request and acceptance, pointing to **supply, matching, or capacity constraints** that prevent requests from being fulfilled.

Together, these views demonstrate that **demand is present**, but **service delivery breaks at different stages depending on the level of analysis** — first during ride matching, and later during ride execution.

### Key takeaways
- **Cancellations and unfulfilled rides are the primary bottlenecks**, not user acquisition or onboarding.
- **Operational stress is time-dependent**, with performance degradation concentrated during peak demand periods.
- **Platform differences explain volume distribution**, while **revenue efficiency remains stable** across platforms.
- **Customer experience is inconsistent**, contributing to highly polarized ratings.

**Conclusion:**  
The highest-leverage opportunity for Metrocar is improving **operational reliability during peak hours** and stabilizing the **end-to-end ride execution experience**, rather than optimizing acquisition or pricing.

![Figure 1 — User Conversion Funnel](https://github.com/Kiichenko-Vlad/metrocar-data-analysis/blob/main/dashboards/images/fig_01_user_funnel.png)

![Figure 2 — Ride Conversion Funnel]([dashboards/images/fig_02_ride_funnel.png](https://github.com/Kiichenko-Vlad/metrocar-data-analysis/blob/main/dashboards/images/fig_02_ride_funnel.png))


---

## 2) Key Product Metrics Snapshot
The following metrics summarize overall product health and performance:

- **Completion Rate:** 58.0% — moderate, indicating friction after request  
- **Cancellation Rate:** 42.0% — high and the primary risk metric  
- **Avg Time to Accept:** ~6.9 minutes — acceptable on average, but sensitive to peak hours  
- **Avg Revenue per Ride:** ~$21 — stable monetization  
- **Ratings:** High (4–5) 50.5% vs Low (1–2) 39.5% — experience quality is uneven  

**Overall assessment:** Metrocar is commercially healthy, but reliability issues and inconsistent experience create a meaningful retention risk.

![Figure 2 — Completion vs Cancellation](dashboards/images/fig_02_completion_vs_cancellation.png)

---

## 3) Funnel & Drop-Off Analysis
### What’s happening
- The largest losses occur **after a ride is requested**, not during onboarding.
- Drop-off behavior varies significantly by hour of day.
- Two dominant demand peaks:
  - **08:00–09:00**
  - **16:00–18:00**
- During these peak periods:
  - Acceptance time increases  
  - Cancellation probability rises  
  - Completion rate declines  

### What it means
User intent remains strong, but system capacity is stressed during peak windows. This points to **supply, matching, or operational execution constraints**, rather than weak demand.

### Product implication
Stabilizing peak-hour execution will disproportionately improve overall product outcomes.

![Figure 3 — Requested vs Completed vs Cancelled by Hour](dashboards/images/fig_03_rides_by_hour.png)

![Figure 4 — Peak-hour Risk Map (Weekday × Hour)](dashboards/images/fig_04_peak_hour_heatmap.png)

---

## 4) Platform Performance
### Volume contribution
iOS generates the largest share of completed rides, followed by Android. Web contributes a smaller but still meaningful portion of overall volume.

### Revenue efficiency
Average revenue per ride remains consistent across platforms at approximately **$21**, indicating no meaningful monetization differences.

### Product implication
Platform strategy should prioritize **experience reliability and operational consistency**, rather than platform-specific monetization changes.

![Figure 5 — Completed Rides by Platform](dashboards/images/fig_05_platform_volume.png)

---

## 5) Customer Satisfaction
Customer feedback is highly polarized:
- **Positive (4–5):** 50.5%  
- **Negative (1–2):** 39.5%  
- **Neutral (3):** ~10%  

This distribution indicates inconsistent service delivery rather than an “average quality” experience.

**Product risk:**  
Such polarization undermines trust, repeat usage, and long-term retention — even when revenue metrics appear stable.

![Figure 6 — Rating Distribution (1–5)](dashboards/images/fig_06_rating_distribution.png)

---

## 6) Strategic Conclusions
1. Demand is strong, but execution is uneven.  
2. Cancellations are the primary performance bottleneck.  
3. Monetization is stable across platforms.  
4. Ratings expose volatility not visible in averages.  
5. Peak-hour reliability is the highest-impact improvement area.

---

## 7) Recommendations
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

## 8) Final Assessment
Metrocar is commercially viable and scalable, but growth is constrained by operational reliability and inconsistent user experience. Stabilizing peak-hour performance and reducing the share of “very bad” experiences represents the highest-leverage path toward sustainable retention and long-term product health.
