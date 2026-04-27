## ✅ R5 — HIGH: Calculate Net Category Profit After Returns

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
