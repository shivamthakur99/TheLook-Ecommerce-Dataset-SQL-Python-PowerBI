## Functional Requirements (FR)

**FR-01 — Return Reason Capture**
- The returns portal shall require customers to select a standardized return reason from a predefined list
- Reason options: Wrong size, Not as described, Damaged/defective, Changed mind, Delivery delay, Other (with text field)
- 100% capture rate required before returning authorization
- Data must flow to Power BI within 24 hours

**FR-02 — Cancellation Reason Capture**
- The order cancellation flow shall require selection of a standardized reason before confirming
- Reason options: Changed mind, Found cheaper, Delivery time, Payment issue, Ordered by mistake, Other
- 100% capture rate required before cancellation finalized
- Enables root cause analysis of 27K cancellations

**FR-03 — Size Guidance Integration**
- Product pages for Intimates, Outerwear, Jeans shall display interactive size guide
- Include actual measurements (CM + inches) and conversion charts
- "Find my size" tool based on customer height/weight input
- Size-specific reviews displayed (e.g., "I'm 5'10", size M fit perfectly")

**FR-04 — Customer Retention Dashboard**
- CRM shall display cohort analysis view showing new vs returning customer revenue
- LTV curve by cohort with year-over-year trends
- Re-engagement campaign performance tracked against 15% open rate target
- Updated weekly, sliced by acquisition source and customer segment

**FR-05 — Channel ROI Dashboard**
- Marketing dashboard shall display CAC (cost per acquisition), revenue per channel, LTV by source
- Updated monthly with data from GA4, ad platforms, order management system
- Drill-down into campaign performance by traffic source
- Budget allocation recommendations based on ROI
