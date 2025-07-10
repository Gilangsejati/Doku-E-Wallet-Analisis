# 🛍️ Superstore Sales Analysis (2014–2017)

Proyek ini bertujuan untuk menganalisis performa penjualan, segmentasi pelanggan, dan profitabilitas produk berdasarkan data transaksi dari tahun 2014 hingga 2017. Analisis dilakukan menggunakan SQL, Python, dan Power BI untuk membangun dashboard interaktif yang menyajikan insight strategis berbasis data.

---

## Analisis With Python
📌 File: [Analis with python](https://github.com/Gilangsejati/Doku-E-Wallet-Analisis/blob/main/Superstore-Analisis/scripts/Superstore.ipynb)

Data dibersihkan dan dieksplorasi menggunakan **pandas**, **matplotlib**, dan **seaborn**. Proses mencakup:
- Konversi tipe data dan penghapusan null/duplikat
- Penambahan kolom `Year`, `Month`, dan `Profit Margin`
- Visualisasi tren penjualan dan profit
- Analisis kategori, segmen pelanggan, dan dampak diskon terhadap profit
- Heatmap korelasi antar variabel numerik

---

## Business Questions & SQL Analysis
📌 File: [Analis with Sql](https://github.com/Gilangsejati/Doku-E-Wallet-Analisis/blob/main/Superstore-Analisis/sql/Superstore%20analisis%20with%20sql.sql)

Analisis dilakukan untuk menjawab pertanyaan strategis seperti:

- Wilayah dengan Penjualan dan Profit Tertinggi
- 10 Produk Terlaris berdasarkan Total Sales
- Kategori/Sub-Kategori dengan Margin Terbaik
- Produk dengan Profit Negatif
- Rata-rata Diskon dan Profit per Kategori
- Segmentasi Pelanggan berdasarkan Profitabilitas
- Tren Penjualan Bulanan

---

## Dashboard Power BI
📌 File: [Dashboard Superstore] (file:///C:/PORTOFOLIO%20DATA%20ANALYST/Superstore-Analisis/dashboard/superstore.pdf)

### 🎯 Fitur Dashboard:
- **KPI Card**:
  - Total Sales: $1.13B
  - Total Profit: $1.80B
  - Total Orders: 5.009
  - Total Quantity Sold: 37.87K
- Tren Penjualan dan Profit Tahunan
- Penjualan dan Profit per Kategori & Sub-Kategori
- Peta Jumlah Transaksi per Wilayah (Map)
- Segmentasi Pelanggan (Consumer, Corporate, Home Office)
- Top Produk & Produk Merugi
- Slicer Interaktif: Tanggal, Kategori, Sub-Kategori, Segment, dan Region

---

## Key Insights
- Kategori Furniture menyumbang penjualan tertinggi, namun profit tertinggi berasal dari Technology.
- Produk seperti Phones, Copiers, dan Binders memiliki kontribusi signifikan terhadap profit.
- Beberapa sub-kategori seperti Tables dan Bookcases mengalami kerugian meskipun memiliki volume penjualan tinggi.
- Segment Consumer mendominasi jumlah transaksi, namun Corporate memiliki margin profit lebih tinggi.
- Terdapat pertumbuhan penjualan dan profit yang konsisten dari tahun 2014 hingga 2017.

---

## Rekomendasi
Fokuskan promosi pada produk dan sub-kategori dengan margin profit tinggi (misal: Copiers, Phones). Evaluasi strategi harga/diskon pada sub-kategori yang merugi. Perkuat hubungan dengan segmen pelanggan Corporate untuk meningkatkan margin. Gunakan pola musiman dan tren historis untuk perencanaan stok dan kampanye penjualan.

---





