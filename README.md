# 🚖 Metrocar — Product Analytics Case

## 📌 Project Overview
This project is an end-to-end product analytics case study based on Metrocar ride-hailing data.  
The goal of the analysis is to understand user behavior across the ride lifecycle, evaluate product health, identify funnel drop-offs, and connect operational metrics with customer satisfaction.

The analysis was performed using **SQL** for data extraction and transformation, and **Tableau** for visualization and analytical storytelling.

---

## 🎯 Business Objectives
This project focuses on answering the following product-level questions:
1. Where and when do users drop off in the ride lifecycle?
2. How does performance differ by platform (iOS / Android / Web)?
3. Are there meaningful behavioral differences across age groups?
4. How healthy is the product in terms of conversion, completion, and cancellations?
5. Does customer satisfaction align with strong operational metrics?

---

## 🧱 Data Model & Sources
The analysis is based on multiple relational tables, including:
- **App downloads** — platform
- **User signups** — onboarding and age range 
- **Ride requests** — request, accept, complete, and cancel events  
- **Transactions** — monetization and payment status  
- **Reviews** — customer ratings and satisfaction signals  

These tables support the full user journey:  
**Download → Signup → Ride Requested → Ride Accepted → Ride Completed → Payment → Review**

The diagram below illustrates the logical data model used in the analysis,
including key entities and relationships across the ride lifecycle.

[Data Schema](https://github.com/Kiichenko-Vlad/metrocar-data-analysis/tree/main/assets)

---

## 🧮 SQL Analysis
All SQL queries are available in the `/sql` folder and are organized around key business questions:
- Funnel construction and conversion rates
- Drop-off and cancellation analysis
- Time-based performance patterns
- Revenue and payment metrics
- Rating distribution and correlation with ride outcomes  

Each query is documented and focused on a single analytical objective.

---

## 📊 Dashboards (Tableau)

Interactive dashboards were built in Tableau to visualize insights and support product decision-making.

🔗 **Public Dashboard:**  
[Tableau Public – Metrocar Product Analysis](https://public.tableau.com/app/profile/vladyslav.kiichenko/viz/MetrocarProductAnalyticsCase/MetrocarProductPerformanceSummary)

🖼 **Dashboard Snapshots (static images):**  
See dashboard screenshots in [`/dashboards`](dashboards/)

### Dashboard Structure
The Tableau Story is organized into four analytical sections:

### 1️⃣ Where Users Drop Off in the Funnel
**Purpose:**  
Understand where users drop off across the ride lifecycle and how funnel performance
changes by platform and age group.

**Analysis includes:**
- Full user funnel from app download to review
- Ride-specific funnel focused on request → completion stages
- Funnel comparison by platform (iOS / Android / Web)
- Funnel comparison by age group

**Key takeaway:**  
The largest drop-off occurs between the *Ride Accepted → Ride Completed* stages (~49%),
indicating that while ride requests are successfully accepted, a significant share of rides
fails during execution. This suggests experience-level or operational issues rather than
demand or matching inefficiencies.

---

### 2️⃣ Product Health Snapshot
**Purpose:** Provide a high-level operational overview of the product.  
Metrics included:
- Completion rate
- Cancellation rate
- Average time to accept
- Ride volume dynamics  

**Key takeaway:**  
Demand and ride volume follow clear and predictable daily patterns, while average time to accept
remains relatively stable across hours. However, cancellation rates stay consistently high throughout
the day, indicating that cancellations are not driven by peak demand alone and may be influenced by
execution- or experience-level factors.

---

### 3️⃣ Platform & Age Insights
**Purpose:** Analyze performance differences across platforms and age groups.  
Key findings:
- iOS dominates completed ride volume, while revenue per ride remains nearly identical across platforms
- Completion rates are relatively consistent across age groups
- Cancellation patterns vary more by platform than by age, with web users showing higher cancellation
  rates in certain age segments

---

### 4️⃣ Customer Satisfaction Reality Check
**Purpose:** Validate whether operational success aligns with user satisfaction.  
Analysis included:
- Rating distribution (1–5)
- Low / Neutral / High rating split
- Share of positive vs negative feedback  

**Key insight:**  
Customer satisfaction is highly polarized:
- Over 50% positive ratings (4–5 stars)
- Nearly 40% low ratings (1–2 stars)  

This indicates inconsistent user experience rather than a uniformly strong product.


---

## 💡 Business Implications
From a product perspective, the analysis suggests:
- Reducing cancellations requires a focus on post-acceptance execution and ride experience, rather than solely improving demand generation or acceptance speed.
- Platform-specific volume differences should be addressed through targeted optimization, while monetization strategies can remain largely uniform.
- Age-based segmentation offers limited leverage compared to platform and experience-level factors.
- Customer ratings should be monitored alongside operational KPIs, as they reveal experience consistency risks not visible in funnel or completion metrics alone.


---

## 📄 Analytical Report
- [Executive Summary](report/executive_summary.md)

---

## 🛠 Tools & Technologies
- PostgreSQL  
- DBeaver  
- Tableau Public


---

## 👤 Author
**Vladyslav Kiichenko**  
📍 Ukraine  
🔗 [LinkedIn](https://www.linkedin.com/in/vladyslav-kiichenko-81b3b3386/)
