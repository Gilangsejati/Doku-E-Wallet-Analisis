-- SUPERSTORE --

-- Total Sales dan Profit per Region
SELECT region, 
       ROUND(SUM(sales), 2) AS total_sales, 
       ROUND(SUM(profit), 2) AS total_profit
FROM superstore_clean
GROUP BY region;

-- 10 Produk dengan Penjualan Tertinggi --
SELECT product_name, 
       ROUND(SUM(sales), 2) AS total_sales
FROM superstore_clean
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- Rata-rata Diskon dan Profit per Kategori --
SELECT category, 
       ROUND(AVG(discount), 2) AS avg_discount,
       ROUND(AVG(profit), 2) AS avg_profit
FROM superstore_clean
GROUP BY category;

-- Produk dengan Profit Negatif --
SELECT product_name, 
       ROUND(SUM(profit), 2) AS total_profit
FROM superstore_clean
GROUP BY product_name
HAVING total_profit < 0
ORDER BY total_profit ASC
LIMIT 10;

-- Tren Penjualan per Bulan--
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       ROUND(SUM(sales), 2) AS total_sales
FROM superstore_clean
GROUP BY month
ORDER BY month;


