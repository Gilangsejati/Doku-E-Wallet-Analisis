# 🛍️ Superstore Sales Analysis (2014–2017)

Proyek ini bertujuan untuk menganalisis performa penjualan, segmentasi pelanggan, dan profitabilitas produk berdasarkan data transaksi dari tahun 2014 hingga 2017. Analisis dilakukan menggunakan SQL, Python, dan Power BI untuk membangun dashboard interaktif yang menyajikan insight strategis berbasis data.

---

## 🧹 Data Preparation (Python)
📌 `scripts/data_cleaning.py`, `notebooks/eda.ipynb`

**Langkah-langkah yang dilakukan:**
- Filter data tahun 2014–2017
- Data Cleaning:
  - Menghapus nilai kosong
  - Koreksi tipe data (`Order Date`, `Sales`, dll)
  - Hapus duplikat
- Enrichment:
  - Tambah kolom `Year`, `Month`, dan `Profit Margin`
- Export ke CSV → digunakan dalam Power BI dan SQL

---

## 📊 Exploratory Data Analysis (EDA)
📌 `notebooks/eda.ipynb`

Visualisasi awal untuk menggali struktur data dan hubungan antar variabel:
- Tren waktu penjualan dan profit
- Korelasi diskon terhadap profit
- Distribusi pelanggan per segmen
- Kinerja per kategori dan sub-kategori produk

---

## 🧠 Business Questions & SQL Analysis
📌 `sql/analisis_superstore.sql`

Analisis dilakukan untuk menjawab pertanyaan strategis seperti:

- Wilayah dengan Penjualan dan Profit Tertinggi
- 10 Produk Terlaris berdasarkan Total Sales
- Kategori/Sub-Kategori dengan Margin Terbaik
- Produk dengan Profit Negatif
- Rata-rata Diskon dan Profit per Kategori
- Segmentasi Pelanggan berdasarkan Profitabilitas
- Tren Penjualan Bulanan

---

## 📈 Dashboard Power BI
📌 `dashboard/Superstore_Report.pbix`

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

## 💡 Key Insights
- Kategori Furniture menyumbang penjualan tertinggi, namun profit tertinggi berasal dari Technology.
- Produk seperti Phones, Copiers, dan Binders memiliki kontribusi signifikan terhadap profit.
- Beberapa sub-kategori seperti Tables dan Bookcases mengalami kerugian meskipun memiliki volume penjualan tinggi.
- Segment Consumer mendominasi jumlah transaksi, namun Corporate memiliki margin profit lebih tinggi.
- Terdapat pertumbuhan penjualan dan profit yang konsisten dari tahun 2014 hingga 2017.

---

## ✅ Rekomendasi
Fokuskan promosi pada produk dan sub-kategori dengan margin profit tinggi (misal: Copiers, Phones). Evaluasi strategi harga/diskon pada sub-kategori yang merugi. Perkuat hubungan dengan segmen pelanggan Corporate untuk meningkatkan margin. Gunakan pola musiman dan tren historis untuk perencanaan stok dan kampanye penjualan.

---

## 🛠 Tools
- Power BI – Visualisasi dashboard interaktif
- SQL (MySQL) – Query analisis bisnis
- Python (pandas, seaborn, matplotlib) – Data wrangling & EDA

---



