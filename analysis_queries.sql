
-- Retail Sales & Profitability Intelligence
-- Database: retail_analytics
-- Table: public.retail_sales

-- 1. Overall Business KPIs
SELECT
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2) AS profit_margin,
    COUNT(DISTINCT order_id) AS total_orders
FROM public.retail_sales;


-- 2. Category-wise Sales and Profit
SELECT
    category,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2) AS profit_margin
FROM public.retail_sales
GROUP BY category
ORDER BY total_sales DESC;


-- 3. Regional Performance
SELECT
    region,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2) AS profit_margin
FROM public.retail_sales
GROUP BY region
ORDER BY total_profit DESC;


-- 4. Monthly Sales and Profit Trend
SELECT
    DATE_TRUNC('month', order_date) AS sales_month,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM public.retail_sales
WHERE order_date >= DATE '2014-01-01'
  AND order_date < DATE '2018-01-01'
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY sales_month;


-- 5. Discount-wise Profitability
SELECT
    discount,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2) AS profit_margin,
    COUNT(*) AS transaction_count
FROM public.retail_sales
GROUP BY discount
ORDER BY discount;


-- 6. Top 10 Loss-making Products
SELECT
    product_name,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    SUM(quantity) AS total_quantity,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2) AS profit_margin
FROM public.retail_sales
WHERE product_name IS NOT NULL
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_profit ASC
LIMIT 10;


-- 7. Sub-category Performance
SELECT
    sub_category,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2) AS profit_margin
FROM public.retail_sales
GROUP BY sub_category
ORDER BY total_profit ASC;
