# 📊 Metrocar — Product Analytics Executive Report

## 1) Executive Summary
This report evaluates Metrocar’s performance across the ride lifecycle — from request to completion, payment, and customer feedback.

Metrocar demonstrates **strong demand and stable monetization**, but **operational reliability is the main constraint**. Cancellations remain high and user experience is inconsistent, reflected in a highly polarized rating distribution. Drop-offs are **systematic and time-dependent**, with the sharpest degradation concentrated in peak hours.

**Key takeaways**
- **Cancellations are the primary bottleneck**, not onboarding.
- **Peak hours correlate with weaker execution** (higher cancellations and lower completion).
- **Platform differences explain volume**, while **revenue efficiency remains stable**.
- **Ratings reveal experience volatility** that average operational metrics can mask.

**Conclusion:** The highest-leverage opportunity is improving **peak-hour reliability** and overall **service consistency**.

![Figure 1 — Executive KPI Snapshot](dashboards/images/fig_01_kpi_snapshot.png)

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
