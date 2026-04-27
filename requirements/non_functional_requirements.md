## Non-Functional Requirements (NFR)

**NFR-01 — Return Reason Data Availability**
- Return reason data shall be available in Power BI data model within 24 hours of capture
- Enables daily dashboard refresh and real-time alerts

**NFR-02 — Size Guide Performance**
- Size guide tool shall load within 2 seconds for 99% of requests
- Function without JavaScript-blocking on all supported browsers
- Mobile-responsive design (tablet and phone friendly)

**NFR-03 — Email Programme Volume**
- CRM email infrastructure shall support minimum 63,000 monthly email sends
- Delivery rate exceeding 98%
- Unsubscribe processing within 24 hours
- GDPR/data privacy compliance

**NFR-04 — Data Model Integrity**
- All source data (orders, returns, cancellations) reconciled daily against source systems
- Discrepancies flagged within 2 hours
- Power BI refresh latency <4 hours
