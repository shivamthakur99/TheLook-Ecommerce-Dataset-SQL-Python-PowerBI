# 📊 TheLook eCommerce | Business Analysis Report
## Power BI Dashboard Analysis | Comprehensive BA Study

<div align="center">

![Status](https://img.shields.io/badge/Status-Completed-green?style=for-the-badge)
![Dataset](https://img.shields.io/badge/Dataset-TheLook%202019--2024-blue?style=for-the-badge)
![Analysis](https://img.shields.io/badge/Analysis-Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Report Type](https://img.shields.io/badge/Report-Executive%20BA-blueviolet?style=for-the-badge)

**A structured business analysis of eCommerce revenue performance, customer behavior, and operational efficiency**

</div>

---

## 📋 Table of Contents

- [📌 Executive Summary](#executive-summary)
- [📊 Key Metrics at a Glance](#key-metrics-at-a-glance)
- [🔍 Dashboard Analysis](#dashboard-analysis)
- [Page 1: Revenue & Sales Performance](#page-1-revenue--sales-performance)
- [Page 2: Customer Behavior & Engagement](#page-2-customer-behavior--engagement)
- [🚨 Critical Findings](#critical-findings)
- [📈 BA Observations](#ba-observations)
- [⚠️ Gap Analysis](#gap-analysis)
- [💡 Strategic Recommendations](#strategic-recommendations)
- [🎯 KPI Register](#kpi-register)
- [🛠️ Functional Requirements](#functional-requirements)
- [📂 Project Structure](#project-structure)
- [🔗 How to Use](#how-to-use)

---

## 📌 Executive Summary

**TheLook eCommerce** generated **£11.14M** in total revenue between 2019 and 2024, serving **63,000 customers** across **94,000 orders**. However, the business faces a critical revenue crisis:

| Metric | Value | Impact |
|--------|-------|--------|
| **Peak Year Revenue** | £5.33M (2022) | 499% YoY growth |
| **2024 Revenue** | £1.53M | -71% decline from peak |
| **Revenue Trajectory** | Cliff decline 2022-2024 | Structural business problem |
| **Return/Cancel Rate** | 28.5% combined | 45K orders with zero ROI |
| **Loss Rate** | 47.9% of orders | Nearly half of all orders cancelled/returned |

### The Core Problem
Revenue peaked sharply in 2022 at £5.33M, then **declined 51% in 2023 to £2.61M** and a further **41% in 2024 to £1.53M**. This is not a seasonal fluctuation — it represents a **structural business decline** that requires urgent intervention.

---

## 📊 Key Metrics at a Glance

<div align="center">

| KPI | Value | Benchmark | Status |
|-----|-------|-----------|--------|
| **Total Revenue** | £11.14M | - | ⚠️ Declining |
| **Total Orders** | 94K | - | ⚠️ Unstable |
| **Total Customers** | 63K | - | ✅ Stable |
| **Total Returns** | 18K | <15% healthy | ❌ 19.1% |
| **Total Cancels** | 27K | <10% healthy | ❌ 28.7% |
| **Combined Loss Rate** | 28.5% | <15% healthy | ❌ Critical |
| **Search Dependency** | 70.8% | <50% healthy | ❌ Critical |
| **Returning Customers** | 1.3K (2024) | - | ❌ -70% YoY |
| **Top Customer LTV** | £102.85 | £500-£2K healthy | ❌ Critically Low |
| **2022 Peak Orders** | 44K | - | 47% of all-time volume |

</div>

---

## 🔍 Dashboard Analysis

### Page 1: Revenue & Sales Performance

#### 📈 Revenue Trajectory — A Revenue Story in Three Acts

```
                                  ┌─── £5.33M ───┐
                                  │     2022      │
                      ┌─────────┐ │   (PEAK)      │ ┌──────┐
                      │ 2021    │ │               │ │ 2023 │ 2024
    £0.78M ─────────► £0.89M   │ │               │ │2.61M │£1.53M
    2020              │         │ │ Growth Spike  │ │      │
                      │         │ │ (+499% YoY)   │ │Cliff │
                      │ Build   │ │               │ │Drop  │
                      │ Phase   │ │               │ │ -71% │
                      └─────────┘ └───────────────┘ └──────┘
    
    ACT 1             ACT 2                          ACT 3
    Slow Build    Explosive Growth            Sharp Contraction
   (2019-2021)      (2022)                      (2023-2024)
```

**Act 1: Slow Build (2019-2021)**
- Revenue grew from negligible to £0.89M
- Limited order volumes (2K-7K annually)
- Business establishing market presence

**Act 2: Explosive Growth (2022)**
- Revenue surged to £5.33M (+499% YoY)
- 44K orders — 47% of all-time order volume in a single year
- Suggests successful campaign, product launch, or partnership

**Act 3: Sharp Contraction (2023-2024)**
- 2023: £2.61M (-51% YoY)
- 2024: £1.53M (-41% YoY)
- Not a normal seasonal decline — **structural revenue problem**

---

#### 💰 Profit by Brand (Top 8)

```
Calvin Klein        ███████████████████ £1.3M
Diesel              ███████████████████ £1.2M
Carhartt            ███████████████████ £1.2M
7 For All Mankind   █████████████████ £1.1M
True Religion       ███████████████ £0.9M
Tommy Hilfiger      █████████████ £0.8M
The North Face      ███████████ £0.7M
Orvis               ███████████ £0.7M
```

**BA Observation:**
- Narrow profit spread (£0.7M–£1.3M) across top 8 brands
- No single brand dominance = healthy diversification
- But also means no brand generates outsized returns
- **Strategic Decision Needed:** Double down on Calvin Klein or accelerate emerging brands?

**Risk Assessment:**
If any top brand exits the product catalogue, there is no dominant replacement to absorb the revenue gap.

---

#### 📦 Profit by Category (Top 8)

```
Outerwear & Coats   ████████████████████████████████████████ £8.0M
Jeans               ██████████████████████████████ £6.5M
Sweaters            ███████████████████████ £4.9M
Suits & Sport Coats ███████████████████████ £4.9M
Fashion Hoodies     ████████████████ £3.4M
Swim                ████████████████ £3.4M
Sleep & Lounge      ███████████████ £3.1M
Active              ██████████████ £3.0M
```

**BA Observation:**
- Outerwear & Coats is **2.6x more profitable** than Active
- BUT: Outerwear also has highest return rate **(32.8%)**
- **Critical Gap:** Net profit by category (after returns) is not calculated
- Return rates concentrated in size-sensitive categories: Intimates (34.2%), Outerwear (32.8%), Jeans (31.1%)

**Strategic Decision Needed:**
- Invest in Outerwear size guidance to reduce returns, OR
- Pivot investment to lower-return categories like Active?

---

#### ❌ Cancel vs Return Split

```
Total Loss Orders:          45K (47.9% of all orders)

Cancellations:   27K (59.77%)      Returns:   18K (40.23%)
────────────────────────            ───────────────────────

Root Causes:                         Root Causes:
• Slow delivery promises            • Inadequate size guidance
• Payment friction                  • Size mismatch (primary)
• Price shock at checkout           • Fit issues
• Changed intent post-order         • Description accuracy

Return Rate by Category:
├─ Intimates:       34.2%
├─ Outerwear:       32.8%
├─ Jeans:           31.1%
└─ All others:      <25%
```

**Critical Finding:**
- 27,000 cancellations (59.77%) = **most urgent operational issue**
- 18,000 returns (40.23%) = product dissatisfaction driven by fit/sizing
- **Data Gap:** No reason data captured for either cancellation or return
- **Impact:** Business cannot improve what it cannot measure

---

### Page 2: Customer Behavior & Engagement

#### 🌐 Customer Acquisition by Traffic Source

```
TRAFFIC SOURCE BREAKDOWN:

Search      ██████████████████████████ 46K — 70.8% [CRITICAL DEPENDENCY]
Organic     █████ 10K — 15.4%
Facebook    ██ 4K — 6.2%
Email       ██ 3K — 4.6% [SEVERELY UNDERUTILISED]
Display     ██ 3K — 4.6%
────────────────────────────
Total       63K customers
```

**BA Verdict: Dangerously Concentrated Channel Mix**

If search visibility drops by 30%, the business loses ~21,000 customers immediately.

| Channel | Customers | % Share | BA Assessment |
|---------|-----------|---------|----------------|
| Search | 46K | 70.8% | ❌ Single point of failure |
| Organic | 10K | 15.4% | ✅ Strong SEO/word-of-mouth |
| Facebook | 4K | 6.2% | ⚠️ Underperforming vs investment |
| Email | 3K | 4.6% | ❌ Critically underutilised for 63K base |
| Display | 3K | 4.6% | ⚠️ Low ROI |

---

#### 👥 Customer Return Rate by Year

```
Returning Customers Trend:

2021  ████████████████████████████ 4.3K [PEAK]
2022  ██████ 0.6K
2023  ███ 0.2K
2024  ████████ 1.3K

Decline from 2021→2024: -70% ⚠️ CRITICAL
```

**BA Observation:**
- Returning customer rate peaked in 2021 at 4.3K
- Fell 70% by 2024 to just 1.3K
- Leading indicator of **customer loyalty erosion**
- Loyalty and retention programme is either absent or failing

---

#### 🔀 Demographics Analysis

**Age Group Distribution:**

```
Peak period: 2022-2023 (broad-based across all segments)
Dominant segment: Adults (25-54)
Status: All groups declining sharply post-2023

Age Groups peaked simultaneously in 2022 → indicates a macro event
(marketing campaign, partnership, or promotion) rather than organic growth.
```

**BA Observation:**
The 2022 customer surge was event-driven, not organic. This explains the sharp contraction in 2023-2024 when the event ended.

---

#### ⚖️ Gender Split

```
Female:  34K customers — 50.23%
Male:    34K customers — 49.77%

Split:   NEAR-PERFECT 50/50
```

**BA Observation:**
- Remarkably balanced gender distribution
- **Unusual for a fashion retailer** (typically skew 60-70% female)
- May indicate: (1) genuine gender-balanced product catalogue, OR (2) household purchasers rather than end-users
- **Data Quality Gap:** Requires validation against product category by gender

---

#### 🏆 Top 10 Customers Analysis

```
RANK    USER ID    EMAIL                         TOTAL PURCHASE    OBSERVATION
────────────────────────────────────────────────────────────────────────────────
 1      21129      ericaconley@example.net       £102.85           Highest — 14x avg
 2      18126      clintonwalter@example.com     £91.93            2nd highest
 3      88364      stevenbrown@example.com       £41.98            Significant drop-off
 4      91464      lauracooper@example.net       £39.99            Promo threshold?
 5      99661      michaelbrown@example.net      £37.99            Mid-tier cluster
 6      23930      jackpreston@example.com       £20.99            £17 gap cliff
 7      86470      sherribaker@example.net       £20.95            Near-identical to #6
 8      95744      jenniferlarsen@example.com    £16.00            Low single-purchase
 9      82204      tinaallen@example.org         £9.99             £10 threshold
10      44050      donnabrock@example.org        £7.16             Lowest top-10

────────────────────────────────────────────────────────────────────────────────
COMBINED: £389.83 | Average per customer: £38.98
```

**The Low Lifetime Value Problem:**

- Top customer spent £102.85 across ALL purchases
- This is **14x the average order** but represents remarkably low absolute spend
- Combined top-10 spend = only £389.83
- **For context:** Healthy fashion e-commerce = £500–£2K annually for top customers
- **Current state:** LTV of £102.85 represents **severe customer retention failure**

---

## 🚨 Critical Findings

### 🔴 PRIORITY 1: Revenue Collapse (2022→2024)

| Year | Revenue | YoY Change | Cumulative |
|------|---------|-----------|-----------|
| 2022 | £5.33M | +499% | Peak |
| 2023 | £2.61M | -51% | -51% |
| 2024 | £1.53M | -41% | -71% |

**Why This Matters:**
- 71% revenue decline over 2 years indicates a structural, not seasonal problem
- No root cause visible in dashboard (market conditions, competition, product issues unknown)
- A BA-led root cause analysis is **required immediately**

**Investigation Required:**
- Product catalogue changes?
- Pricing shifts?
- Competitor activity?
- Marketing spend reduction?
- Fulfilment quality deterioration?

---

### 🔴 PRIORITY 2: Massive Loss Rate (47.9%)

```
94K Total Orders
├─ 27K Cancellations (28.7%)
├─ 18K Returns (19.1%)
└─ 49K Successful Orders (52.1%)

LOSS RATE: 47.9% of all orders = ZERO REVENUE
```

**Why This Matters:**
- Nearly HALF of all orders never generate revenue
- 45K orders wasted operational effort (picking, packing, handling)
- Zero reason data captured for either cancellation or return
- Cannot improve what cannot be measured

---

### 🔴 PRIORITY 3: Collapsing Loyalty (70% decline)

```
Returning Customer Rate:
2021: 4.3K
2024: 1.3K
Decline: -70%
```

**Why This Matters:**
- Customer lifetime value deteriorating rapidly
- Top customer LTV of £102.85 is commercially unsustainable
- Indicates absence or failure of loyalty/retention programme
- New customer acquisition focused, but retention ignored

---

### 🟠 PRIORITY 4: Single-Channel Dependency (70.8% search)

```
If Search Visibility Drops 30%:
Business loses ~21,000 customers overnight

Channel Risk Profile:
Search (70.8%):     Algorithm change = existential threat
Email (4.6%):       Severely underutilised for 63K customer base
Organic (15.4%):    Positive signal but cannot sustain growth alone
```

**Why This Matters:**
- Algorithm update or ad spend cut could decimate acquisition
- Single-point-of-failure in the growth model
- Email programme has massive untapped potential

---

## 📈 BA Observations

### Dashboard Element-by-Element Analysis

| # | Element | BA Observation | Implication | Priority |
|---|---------|---|---|---|
| **01** | Total Revenue £11.14M | Peaked 2022, dropped 71% by 2024. Not recovering. | Structural decline needs urgent strategy | 🔴 CRITICAL |
| **02** | Total Orders 94K | 44K (47%) in 2022 alone. One exceptional year. | Repeatability not demonstrated | 🟠 HIGH |
| **03** | Cancel 27K vs Return 18K | 59.77% cancellation rate. Combined 47.9% loss. | Half of orders = zero revenue | 🔴 CRITICAL |
| **04** | Profit by Brand (Calvin Klein £1.3M) | Top 8 brands within £0.6M. No dominance. | No brand generates outsized returns | 🟡 MEDIUM |
| **05** | Profit by Category (Outerwear £8.0M) | 2.6x more than Active. But 32.8% return rate. | Net margin obscured by returns | 🟠 HIGH |
| **06** | Traffic Source (Search 70.8%) | Single channel dominance. Email grossly underutilised. | Algorithm change = business risk | 🟠 HIGH |
| **07** | Returning Customer Rate (4.3K→1.3K) | 70% decline from 2021. Retention failing. | Loyalty and LTV deteriorating | 🔴 CRITICAL |
| **08** | Top 10 Customers (£389.83 total) | Combined spend under £400. Top customer = £102.85. | Extremely low LTV. Upsell failing. | 🟠 HIGH |
| **09** | Age Group Trends (all declining post-2023) | 2022 growth was event-driven across all segments. | Organic growth model not validated | 🟠 HIGH |
| **10** | Gender Split (50/50) | Unusual for fashion retailer. May be synthetic data. | Requires validation against product category | 🟡 MEDIUM |

---

## ⚠️ Gap Analysis

### Data Gaps, Analysis Gaps & Strategic Gaps

| Gap ID | Issue | Type | Root Cause | Priority | Impact |
|--------|-------|------|-----------|----------|--------|
| **G1** | No return reason data | Data Gap | Returns volume shown, but not WHY. 32.8% Outerwear return rate cannot be actioned. | 🔴 CRITICAL | Cannot improve without understanding root cause |
| **G2** | No cancellation reason tracking | Data Gap | 27K cancellations have no root cause. Could be pricing, delivery, UX, or change of mind. | 🔴 CRITICAL | Operational blindness to largest cost driver |
| **G3** | No net profit by category (returns-adjusted) | Analysis Gap | Outerwear shows £8M gross profit but 32.8% return rate. Net margin obscured. | 🟠 HIGH | Investment decisions based on incomplete data |
| **G4** | No customer lifetime value (LTV) metric | Data Gap | Top customer dashboard shows single purchases, not LTV. Trend invisible. | 🟠 HIGH | Cannot measure retention ROI or loyalty impact |
| **G5** | No channel ROI or CAC data | Analysis Gap | Traffic source shows customer COUNT but not revenue, ad spend, or cost per acquisition. | 🟠 HIGH | Marketing budget decisions based on volume, not profit |
| **G6** | Revenue decline 2022→2024 unexplained | Strategic Gap | 71% revenue drop has no visible root cause. Market conditions vs competition vs product vs marketing unknown. | 🔴 CRITICAL | Cannot develop recovery strategy without understanding cause |
| **G7** | No cohort analysis (new vs returning) | Analysis Gap | Returning customer count shown but revenue contribution vs new customers separated. Retention ROI invisible. | 🟡 MEDIUM | Cannot identify which acquisition cohorts produce durable customers |
| **G8** | No product-level profitability | Data Gap | Brand and category profit shown but no SKU-level data. Underperforming products hidden. | 🟡 MEDIUM | Cannot optimize product mix at granular level |

---

## 💡 Strategic Recommendations

### 8 Prioritised Recommendations

---

### ✅ R1 — CRITICAL: Investigate the 2022→2024 Revenue Collapse

**Status:** Highest Priority | Timeframe: Week 1

The 71% revenue decline from £5.33M (2022) to £1.53M (2024) is the most urgent business problem.

**Required Actions:**
- Conduct stakeholder interviews to understand what changed between 2022 and 2024
- Investigate product catalogue changes
- Analyze pricing shifts and competitive activity
- Review marketing spend and campaign effectiveness
- Examine fulfilment quality and delivery metrics

**Hypothesis Testing:**
- Product catalogue changes?
- Pricing shifts?
- Competitor activity?
- Marketing spend reduction?
- Fulfilment quality deterioration?

**Success Metric:** Root cause identified and recovery strategy defined within 30 days.

---

### ✅ R2 — CRITICAL: Build Return and Cancellation Reason Capture

**Status:** Highest Priority | Timeframe: 30 days

45K orders (47.9%) result in cancellations or returns with **zero reason data** captured.

**Implementation:**
- Mandatory reason selection at point of cancellation
- Mandatory reason selection at point of return initiation

**Reason Categories:**

*Returns:*
- Size/fit issue
- Product not as described
- Damaged/defective
- Changed mind
- Other

*Cancellations:*
- Changed mind
- Found cheaper alternative
- Delivery time too long
- Payment issue
- Ordered by mistake
- Other

**Success Metric:** 100% reason capture rate within 30 days of implementation.

**Impact:** This single change will unlock the root cause analysis for 47.9% of all orders.

---

### ✅ R3 — HIGH: Launch Customer Retention and LTV Programme

**Status:** High Priority | Timeframe: Month 1-2

Returning customer rate fell 70% from 2021 to 2024. Top customer LTV of £102.85 is unsustainable.

**Immediate Actions:**
1. **Email Re-engagement Programme**
   - Target: 63K customer database
   - Goal: Reactivate lapsed customers
   - Frequency: Weekly for 8 weeks, then monthly
   - Success Metric: 15%+ open rate, 3%+ conversion

2. **Loyalty Tier Structure**
   - Bronze (1-2 purchases): 5% discount
   - Silver (3-5 purchases): 10% discount + free shipping
   - Gold (6+ purchases): 15% discount + early access
   - Goal: Incentivize repeat purchase

3. **Personalized Product Recommendations**
   - Based on previous category purchases
   - Triggered via email + product page
   - Success Metric: 2x higher repeat rate vs control

**Target:** Returning customer rate back to 3K+ within 6 months.

**Success Metric:** LTV increased from £102.85 to £200+ per top-decile customer.

---

### ✅ R4 — HIGH: Diversify Customer Acquisition Channels

**Status:** High Priority | Timeframe: Month 1-3

70.8% of customers arriving via search = **single point of failure**.

**Required Actions:**

1. **Email Channel Investment**
   - Build email nurture sequences for 63K existing customers
   - Currently only 4.6% of acquisition (severely underutilised)
   - Target: Increase to 15-20% of acquisition within 12 months

2. **Organic Social Content Programme**
   - Develop branded content strategy
   - Build social proof through user-generated content
   - Target: Increase organic from 15.4% to 25%

3. **Evaluate Facebook Ad Strategy**
   - 6.2% share suggests poor ROI vs spend
   - Audit ad creative, targeting, and messaging
   - Decision: Scale if profitable, pause if not

**Target:** Reduce search dependency from 70.8% to below 50% within 12 months.

**Success Metric:** No single channel >50% of acquisition. Email at 15%+.

---

### ✅ R5 — HIGH: Calculate Net Category Profit After Returns

**Status:** High Priority | Timeframe: Week 2-3

Outerwear shows £8.0M gross profit with a 32.8% return rate — net margin is unknown.

**Implementation:**
- Enrich Power BI data model with return rates per category
- Calculate net margin = Gross Profit − Return Handling Cost
- Reorder investment priorities based on net margin, not gross profit

**Expected Reordering:**
```
Before (Gross):        After (Net, estimated):
1. Outerwear £8.0M  →  1. Jeans £6.0M (-7.7% for returns)
2. Jeans £6.5M      →  2. Outerwear £5.4M (-32.8% for returns)
3. Sweaters £4.9M   →  3. Sweaters £4.7M (-4% for returns)
```

**Success Metric:** Net category profit visualized in Power BI; investment decisions updated based on net, not gross margin.

---

### ✅ R6 — HIGH: Implement Size Guidance for High-Return Categories

**Status:** High Priority | Timeframe: Month 1-2

Intimates (34.2%), Outerwear (32.8%), and Jeans (31.1%) account for highest returns — all size-sensitive.

**Implementation:**

1. **Interactive Size Guide**
   - Actual measurements (CM and inches)
   - Size conversion chart (XS-XXXL mapping)
   - "Find my size" tool based on customer input

2. **Fit Recommendation Tool**
   - Customer enters height, weight, preferred fit
   - System recommends size based on historical data
   - A/B test: guided vs unguided recommendations

3. **Size-Specific Customer Reviews**
   - "I'm 5'10", size M fit perfectly" style reviews
   - Aggregate by height/weight to guide similar customers
   - Display at point of purchase decision

**Target:** Reduce return rate by 8-10 percentage points in each category within 6 months.

**Success Metric:** Intimates 24% return rate, Outerwear 23%, Jeans 21%.

---

### ✅ R7 — MEDIUM: Build Channel ROI Dashboard

**Status:** Medium Priority | Timeframe: Month 2

Current dashboard shows customer volume by traffic source but not profitability.

**Metrics to Add:**
- **CAC by Channel:** Total acquisition cost ÷ customers acquired
- **Revenue per Channel:** Total revenue ÷ customers from channel
- **LTV by Channel:** Lifetime value of customers from each source
- **ROI per Channel:** (Revenue − CAC) ÷ CAC

**Expected Output:**

| Channel | Customers | CAC | Revenue | LTV | ROI |
|---------|-----------|-----|---------|-----|-----|
| Search | 46K | £2.50 | £8.2M | £178 | 71x |
| Organic | 10K | £0 | £2.1M | £210 | ∞ |
| Facebook | 4K | £5.00 | £0.6M | £150 | 29x |
| Email | 3K | £0 | £0.9M | £300 | ∞ |
| Display | 3K | £3.50 | £0.4M | £133 | 37x |

**Success Metric:** Marketing budget decisions based on ROI, not customer volume.

---

### ✅ R8 — MEDIUM: Introduce Cohort Analysis for Revenue Attribution

**Status:** Medium Priority | Timeframe: Month 2-3

Cannot distinguish revenue generated by new vs returning customers.

**Cohort Model Structure:**

```
2020 Acquisition Cohort:
├─ Customers acquired: 2K
├─ Avg orders: 3.5
├─ Year 1 LTV: £85
├─ Year 2 LTV: £45 (retention decline)
└─ Year 3 LTV: £20

2021 Acquisition Cohort:
├─ Customers acquired: 7K
├─ Avg orders: 2.1
├─ Year 1 LTV: £120
├─ Year 2 LTV: £65
└─ Year 3 LTV: £40
```

**Success Metric:** Identify which acquisition cohorts produce the most durable (long-lived) customers.

---

## 🎯 KPI Register

### 10 Metrics to Track Business Recovery

| KPI | Type | Current | Target | Measurement Method | Review Frequency |
|-----|------|---------|--------|------------------|------------------|
| **Annual Revenue** | Lagging | £1.53M (2024) | £3.5M by end 2025 | Total revenue — Power BI monthly | Monthly |
| **Cancel + Return Rate** | Lagging | 47.9% combined | <25% within 12 months | (Cancels + Returns) / Orders | Weekly |
| **Return Reason Capture Rate** | Quality | 0% (none captured) | 100% from launch | Returns with reason / total returns | Daily |
| **Repeat Customer Rate** | Leading | 1.3K (2024) | >4K by end 2025 | Returning customers / total customers | Monthly |
| **Top Customer LTV** | Outcome | £102.85 | >£500 avg LTV | Avg annual spend per top-decile customer | Quarterly |
| **Email Channel Share** | Leading | 4.6% | >20% of acquisition | Email-attributed customers / total | Monthly |
| **Search Channel Dependency** | Efficiency | 70.8% | <50% within 12 months | Search customers / total customers | Monthly |
| **Net Category Margin** | Quality | Not measured | Tracked for top 4 categories | Gross profit − return cost per category | Quarterly |
| **Return Rate (Outerwear)** | Lagging | 32.8% | <22% within 6 months | Returns / orders by category | Weekly |
| **Return Rate (Jeans)** | Lagging | 31.1% | <20% within 6 months | Returns / orders by category | Weekly |

---

## 🛠️ Functional Requirements

### Functional Requirements (FR)

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

### Non-Functional Requirements (NFR)

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

---

## 📂 Project Structure

```
thelook-ecommerce-ba-report/
│
├── 📄 README.md (this file)
├── 📊 BA_REPORT.pdf (Full analysis document)
│
├── 📁 dashboards/
│   ├── Revenue_Sales_Performance.pbix
│   └── Customer_Behavior_Engagement.pbix
│
├── 📁 data/
│   ├── orders.csv
│   ├── returns.csv
│   ├── customers.csv
│   ├── products.csv
│   └── traffic_sources.csv
│
├── 📁 analysis/
│   ├── gap_analysis.md
│   ├── financial_impact.xlsx
│   ├── cohort_analysis.xlsx
│   └── channel_roi_model.xlsx
│
├── 📁 requirements/
│   ├── functional_requirements.md
│   ├── non_functional_requirements.md
│   └── user_stories.md
│
├── 📁 kpi_tracking/
│   ├── kpi_register.xlsx
│   ├── dashboard_kpi.pbix
│   └── kpi_targets_2025.xlsx
│
└── 📁 recommendations/
    ├── R1_Revenue_Collapse_Investigation.md
    ├── R2_Reason_Capture_Implementation.md
    ├── R3_Retention_Programme.md
    ├── R4_Channel_Diversification.md
    ├── R5_Net_Category_Profit.md
    ├── R6_Size_Guidance.md
    ├── R7_Channel_ROI_Dashboard.md
    └── R8_Cohort_Analysis.md
```

---

## 🔗 How to Use

### For Business Stakeholders

1. **Review the Executive Summary** (above) for 5-minute overview
2. **Focus on Critical Findings section** for priority issues
3. **Jump to Strategic Recommendations** for actionable next steps
4. **Refer to KPI Register** to track implementation progress

### For Data Analysts / BI Engineers

1. **Review Dashboard Analysis** (Page 1 & 2 sections) for current metrics
2. **Study Gap Analysis** for missing data/analytics
3. **Check Functional Requirements** for Power BI model enhancements needed
4. **Use KPI Register** to build monitoring dashboards

### For Product/Operations Teams

1. **Review BA Observations** (table in that section) for specific findings
2. **Focus on R2, R3, R6** — these are operational improvements
3. **Set targets in KPI Register** for your team's accountability
4. **Weekly review cycle:** Compare actuals vs KPI targets

### For Marketing Teams

1. **Priority: R4 — Channel Diversification**
2. **Study Channel ROI Dashboard requirement (R7)**
3. **Review Top Customer LTV finding** — indicates weak upsell
4. **Target: Reduce search dependency from 70.8% to <50%**

---

## 📊 Recommended Reading Order

```
1. Executive Summary (5 min)
   ↓
2. Key Metrics at a Glance (5 min)
   ↓
3. Critical Findings (10 min)
   ↓
4. Dashboard Analysis — Page 1 & 2 (20 min)
   ↓
5. Strategic Recommendations (15 min)
   ↓
6. Functional Requirements (for implementation teams)
   ↓
7. KPI Register (ongoing reference)
```

---

## 🎯 Next Steps — BA Action Plan

### Week 1
- [ ] Conduct stakeholder interviews on 2022 revenue spike and 2023-2024 decline
- [ ] Identify which business events, campaigns, or market conditions drove changes
- [ ] Define return reason and cancellation reason taxonomy
- [ ] Get sign-off from CS, Merchandising, and Finance

### Week 1-2
- [ ] Design FR-01 (Return Reason Capture) requirements
- [ ] Design FR-02 (Cancellation Reason Capture) requirements
- [ ] Estimate development effort and timeline

### Week 2-3
- [ ] Build return-adjusted category profit model in Power BI
- [ ] Cross-reference gross profit by category with return rates
- [ ] Produce net margin view and reorder investment priorities

### Week 3-4
- [ ] Audit CRM database for email programme readiness
- [ ] Identify % of 63K customers with valid email
- [ ] Map purchase history and category preferences for segmentation

### Month 2
- [ ] Design and launch first cohort retention email campaign
- [ ] Target: 4.3K customers acquired in 2021 (highest return rate year)
- [ ] Measure against 15% open rate and 3% conversion target

### Month 2-3
- [ ] Build size guide requirements for Intimates, Outerwear, Jeans
- [ ] Deliver as single sprint with QA sign-off
- [ ] Track return rate change 60 days post-launch

---

## 📈 Success Metrics Summary

| Goal | Baseline | Target | Timeline |
|------|----------|--------|----------|
| **Annual Revenue** | £1.53M | £3.5M | 12 months |
| **Return/Cancel Rate** | 47.9% | <25% | 12 months |
| **Customer LTV** | £102.85 | >£500 | 12 months |
| **Returning Customers** | 1.3K | 4K+ | 6 months |
| **Search Dependency** | 70.8% | <50% | 12 months |
| **Email Channel Share** | 4.6% | >20% | 12 months |
| **Outerwear Return Rate** | 32.8% | <22% | 6 months |
| **Jeans Return Rate** | 31.1% | <20% | 6 months |

---

## 🔑 Key Insight

> **The dashboard shows the WHAT. Business Analysis uncovers the WHY — and defines exactly WHAT TO BUILD to fix it.**

Revenue is declining. Cancellations are untracked. Returns have no reason data. Loyalty is collapsing. Channel dependency is dangerous.

**Every one of these problems has a requirement. Every requirement has a KPI. Every KPI has a target.**

**That is Business Analysis.**

---

<div align="center">

### 📚 Report Metadata

| Attribute | Value |
|-----------|-------|
| **Report Title** | TheLook eCommerce Business Analysis Report |
| **Dataset** | TheLook eCommerce (2019-2024) |
| **Data Rows** | 94,000 orders + 63,000 customers |
| **Analysis Tool** | Power BI |
| **Report Scope** | Executive Summary, Key Findings, Gap Analysis, Recommendations, KPI Register |
| **Created** | Business Analytics Professional |
| **Portfolio Project** | 30 Days of BA Essentials — Day 11 |

### 🏷️ Tags

`#BusinessAnalysis` `#PowerBI` `#eCommerce` `#DataAnalytics` `#BAReport` `#Requirements` `#KPI` `#DataDriven` `#TechCareer` `#EcommerceAnalytics`

</div>

---

## 📞 Contact & Questions

For questions about this analysis or Power BI methodology:
- 📧 shivamkthakur99@gmail.com
- 📱 +91-96448 50082
- 💼 [LinkedIn Profile](www.linkedin.com/in/shivam-kumar-thakur99)

---

<div align="center">

**Last Updated:** April 2025 | **Status:** Complete BA Analysis | **Confidentiality:** Analysis Framework Available for Portfolio

</div>
