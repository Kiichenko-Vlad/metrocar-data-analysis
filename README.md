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
- **App downloads** — platform and acquisition data  
- **User signups** — onboarding and activation  
- **Ride requests** — request, accept, complete, and cancel events  
- **Transactions** — monetization and payment status  
- **Reviews** — customer ratings and satisfaction signals  

These tables support the full user journey:  
**Download → Signup → Ride Requested → Ride Accepted → Ride Completed → Payment → Review**

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
[Tableau Public – Metrocar Product Analysis](LINK_HERE)

### Dashboard Structure
The Tableau Story is organized into four analytical sections:

### 1️⃣ When & How Users Drop Off
**Purpose:** Identify time-based behavioral patterns and operational bottlenecks.  
Key insights:
- Conversion rates by weekday × hour
- Peak-hour demand pressure
- Acceptance delays and cancellation risk  

**Key takeaway:**  
Drop-offs are strongly time-dependent, with peak-hour pressure creating measurable friction in acceptance and completion.

---

### 2️⃣ Product Health Snapshot
**Purpose:** Provide a high-level operational overview of the product.  
Metrics included:
- Completion rate
- Cancellation rate
- Average time to accept
- Ride volume dynamics  

**Key takeaway:**  
Despite stable demand and acceptance times, cancellation rates remain elevated, suggesting structural inefficiencies rather than demand issues.

---

### 3️⃣ Platform & Age Insights
**Purpose:** Analyze performance differences across platforms and age groups.  
Key findings:
- iOS dominates completed ride volume, while revenue per ride remains similar across platforms
- Completion rates are relatively consistent across age groups
- Web users show higher cancellation risk in specific age segments

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

## 🔍 Key Product Insights (Summary)
- Demand peaks are predictable, but supply-side pressure drives acceptance delays and cancellations.
- Platform differences are more pronounced in volume than in monetization efficiency.
- Age-based differences exist but are less significant than expected.
- Strong completion metrics do not guarantee customer satisfaction.
- High rating polarization highlights experience consistency as a key risk area.

---

## 💡 Business Implications
From a product perspective, the analysis suggests:
- Optimizing supply during peak hours may reduce cancellations more effectively than increasing acquisition.
- Improving experience consistency may deliver more value than improving average metrics.
- Ratings should be monitored alongside operational KPIs, not treated as secondary signals.

---

## 📄 Analytical Report
- [Executive Summary](report/executive_summary.md)
- [Full Analytical Report](report/analytical_report.md)

---

## 🛠 Tools & Technologies
- PostgreSQL  
- DBeaver  
- Tableau Public

---

## 📎 Project Purpose
This project was created as a portfolio case to demonstrate practical data analytics skills, including SQL-based analysis, data visualization, and product-oriented insight generation.
