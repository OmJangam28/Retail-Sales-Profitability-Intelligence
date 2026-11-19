# Retail Sales & Profitability Intelligence

## Project Overview
An end-to-end retail data analytics project focused on understanding sales performance, profitability, regional trends, product performance, and the relationship between discounts and profit.

The project analyzes the Sample Superstore dataset containing 9,994 records across 21 columns. SQL and Python were used for data analysis, Excel for supporting analysis, and Looker Studio for interactive dashboard visualization.

## Tools & Technologies
- PostgreSQL – Data storage and SQL analysis
- SQL – Data querying, aggregation, and analysis
- Python (Pandas) – Data analysis and processing
- Microsoft Excel – Pivot tables and supporting analysis
- Google Sheets – Dashboard data source
- Looker Studio – Interactive dashboard
- Git & GitHub – Version control and project publishing

## Key Performance Indicators
| Metric | Result |
|---|---:|
| Total Sales | $2,297,200.86 |
| Total Profit | $286,397.02 |
| Profit Margin | 12.47% |
| Total Orders | 5,009 |

## Key Business Findings

### 1. Category Performance
- Technology generated the highest sales at $836,154.03.
- Technology achieved a 17.40% profit margin.
- Furniture had the lowest category profit margin at 2.49%.

### 2. Regional Performance
- West was the highest-performing region by sales and profit.
- West generated $108,418.45 in profit.
- Central had the lowest regional profit margin at 7.92%.

### 3. Discount Analysis
- Orders with discounts of 30% and above showed negative aggregate profits across the observed discount bands.
- The 80% discount band recorded a negative profit margin of 180.03%.
- This indicates a need to review high-discount transactions and their profitability.

### 4. Loss-Making Products
- The analysis identified the 10 products with the lowest aggregate profits.
- Together, these products generated $120,876.96 in sales and a loss of $29,458.37.
- Cubify CubeX Double Head was the largest loss-making product in the analysis.

## Business Recommendations
1. Review the pricing and cost structure of low-margin Furniture products, especially Tables and Bookcases.
2. Evaluate high-discount transactions before approving additional discounts.
3. Investigate the causes of lower profitability in the Central region.
4. Review pricing, procurement costs, and sales strategies for consistently loss-making products.
5. Use category-, region-, and product-level profitability metrics to support business decisions.

## Dashboard
The Looker Studio dashboard includes:
- Sales, profit, profit margin, and order KPIs
- Sales by category
- Profit by region
- Monthly sales trend
- Discount versus profit analysis
- Top 10 loss-making products

## Project Outcome
This project demonstrates an end-to-end retail analytics workflow, from data storage and SQL-based analysis to spreadsheet analysis and interactive business intelligence reporting.
