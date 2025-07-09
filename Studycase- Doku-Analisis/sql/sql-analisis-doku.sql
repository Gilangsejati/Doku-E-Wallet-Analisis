-- DOKU --

SELECT * FROM master_campaign_clean;
SELECT * FROM master_trx_join_campaign_clean;
SELECT
    COUNT(DISTINCT campaign_id) AS jumlah_campaign
FROM master_trx_join_campaign_clean;

SELECT COUNT(*) FROM master_campaign_clean;

SELECT COUNT(*) FROM master_trx_join_campaign_clean;

SELECT COUNT(*) FROM master_trx_campaign_clean;

-- Kampanye Berkinerja Terbaik menurut Jumlah Transaksi --
SELECT 
    campaign_id,
    campaign_name, 
    COUNT(*) AS jumlah_transaksi
FROM 
   master_trx_join_campaign_clean
GROUP BY 
    campaign_id, campaign_name
ORDER BY 
    jumlah_transaksi DESC
LIMIT 10;

-- Kategori Pedagang Teratas menurut Volume Transaksi
SELECT 
    merchant_category_name, 
    COUNT(*) AS jumlah_transaksi
FROM 
  master_trx_join_campaign_clean
GROUP BY 
    merchant_category_name
ORDER BY 
    jumlah_transaksi DESC
LIMIT 10;

--  jumlah total transaksi dan total pendapatan yang dihasilkan untuk setiap merchant 
SELECT 
    merchant_name,
    COUNT(*) AS jumlah_transaksi,
    SUM(paid_amount) AS total_pendapatan
FROM 
     master_trx_join_campaign_clean
GROUP BY 
    merchant_name
ORDER BY 
    total_pendapatan DESC;
    
-- Segmentasi Pelanggan menurut Frekuensi Transaksi dan Total Pengeluaran
SELECT
    customer_name,
    COUNT(*) AS frekuensi_transaksi,
    SUM(paid_amount) AS total_pengeluaran
FROM
     master_trx_join_campaign_clean
GROUP BY
    customer_name
ORDER BY
    total_pengeluaran DESC;

-- segmentasi pelanggan berdasarkan seberapa sering mereka bertransaksi dan total pengeluaran mereka 
SELECT
    customer_name,
    COUNT(*) AS frekuensi_transaksi,
    SUM(paid_amount) AS total_pengeluaran,
    -- Segmentasi Frekuensi
    CASE
        WHEN COUNT(*) < 5 THEN 'Low Frequency'
        WHEN COUNT(*) BETWEEN 5 AND 15 THEN 'Medium Frequency'
        ELSE 'High Frequency'
    END AS frekuensi_segment,
    -- Segmentasi Spending
    CASE
        WHEN SUM(paid_amount) < 1000000 THEN 'Low Spender'
        WHEN SUM(paid_amount) BETWEEN 1000000 AND 5000000 THEN 'Medium Spender'
        ELSE 'High Spender'
    END AS spending_segment
FROM
     master_trx_join_campaign_clean
GROUP BY
    customer_name
ORDER BY
    total_pengeluaran DESC;
    

-- Performa Kampanye Pemasaran Berdasarkan Keterlibatan Pelanggan
SELECT
    campaign_id,
    campaign_name,
    is_premium,
    COUNT(*) AS jumlah_transaksi,
    SUM(paid_amount) AS total_pengeluaran
FROM
	master_trx_join_campaign_clean
GROUP BY
    campaign_id,
    campaign_name,
    is_premium
ORDER BY
    campaign_id,
    is_premium;

    
SELECT campaign_id
FROM master_campaign_clean 
WHERE 'Ceban';