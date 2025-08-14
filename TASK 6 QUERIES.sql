-- Monthly Sales Trend Analysis

SELECT
    YEAR(order_date) AS SaleYear,
    MONTH(order_date) AS SaleMonth,
    SUM(amount) AS TotalSales
FROM
    [task 6 cleaned]
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    SaleMonth,
	SaleYear






-- Using count(distinct) to show total volume

SELECT
    category,
    COUNT(DISTINCT order_id) AS total_volume
FROM
    [task 6 cleaned]
GROUP BY
    category
ORDER BY
    total_volume DESC

