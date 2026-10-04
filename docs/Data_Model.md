# Data Model — Project 3

## Star schema
**FactCustomerPerformance** is the analytical fact table.

Dimensions:
- **DimDate** → Date, Month, Quarter, Year
- **DimCustomer** → CustomerID, Segment
- **DimChannel** → Channel
- **DimProduct** → Category

Relationships are 1:* from each dimension to the fact table with single-direction filtering.

## Grain
One synthetic customer/category/channel transaction observation per date.

## Interaction model
Date filters synchronize across pages. Customer, channel and product selections cross-filter revenue, order and margin visuals. Customer drill-through retains CustomerID and period context.
