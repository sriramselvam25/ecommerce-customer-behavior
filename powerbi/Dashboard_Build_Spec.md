# Customer & Business Performance Analytics — Power BI Dashboard Build Specification

## Visual direction
Theme: **Customer Growth**

Palette: Teal #14B8A6 · Violet #8B5CF6 · Coral #FB7185 · Amber #F59E0B · Sky #38BDF8

Typography: Segoe UI / Aptos. Use 28–32 px page titles, 22–28 px KPI values, 12–14 px chart titles and 10–12 px labels. Maintain consistent spacing and alignment across all pages.

## Canvas system
- 16:9 report canvas
- Header: page title, context subtitle, last-refresh indicator
- Filter rail: date + project-specific dimensions
- KPI row: six primary cards with variance/status badges
- Main analytical zone: 2–4 high-value visuals per page
- Insight strip: concise interpretation / recommended action
- Footer: synthetic-data disclosure

## KPIs
- Revenue
- Active Customers
- Average Order Value
- Repeat Purchase Rate
- Retention Rate
- YoY Growth %

## Pages
### 1. Executive Overview
Executive KPI row plus primary trend, contribution and exception visuals.

### 2. Customer Segmentation
Diagnostic views with selectable categories, comparison states and contextual tooltips.

### 3. Channel & Product Performance
Detailed performance views with drill-down, ranking and contribution analysis.

### 4. Retention & Growth Drivers
Forward/action-oriented views combining trends, drivers, risks and recommendations.

## Visual inventory
- Monthly revenue + customer growth combo timeline
- Customer segment bubble chart (value × frequency × recency)
- Channel contribution stacked columns
- Product/category treemap
- Retention cohort heatmap
- Top-customer contribution Pareto

## Interaction requirements
1. Selecting a visual category cross-filters relevant visuals on the page.
2. Hover/tap tooltips show current value, comparison value, variance and context.
3. Drill-through retains filter context.
4. Date slicers synchronize across report pages where appropriate.
5. KPI cards show directional icons plus text status; do not rely on color alone.
6. Timeline charts use a consistent time grain and expose month/quarter/year hierarchy.
7. Reset Filters returns the page to the designed default state.

## Visual consistency rules
- Use the theme palette consistently but give each series a stable semantic role.
- Limit chart clutter; prioritize direct labels where readable.
- Use playful shapes/accents in headers and section separators, not behind dense data.
- Preserve whitespace around KPI cards and charts.
- Keep decimal precision consistent by metric type.
- Use the same font family, corner radius and tooltip layout across the report.
- Negative finance/attrition/risk states receive explicit warning labels as well as color.

## Report narrative
Understand who creates value, where growth comes from, and which customers/channels need retention action.
