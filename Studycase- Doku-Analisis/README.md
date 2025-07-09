# KYC Marketing Campaign Analysis (2021–2024)

Proyek ini bertujuan untuk menganalisis performa kampanye pemasaran, segmentasi pelanggan, dan kinerja merchant menggunakan data transaksi dari tahun 2021 hingga 2024. Analisis dilakukan menggunakan Python, SQL, dan Tableau.

---

##Bagian 1: Persiapan & Pembersihan Data (Python)

📌 File: `scripts/data_cleaning.py`, `notebooks/eda.ipynb`

### Tahapan yang Dilakukan
- **Filter data tahun 2021–2024** dari dataset mentah.
- **Cleaning**: menghapus nilai kosong, mengoreksi tipe data, dan menghapus duplikat.
- **KYC Labeling**: menambahkan kolom `is_premium` berdasarkan data:
  - Jika kolom **kota**, **pekerjaan**, dan **usia** tidak kosong → pelanggan dianggap **Premium**.
- **Muat ke Pandas DataFrame** untuk analisis lebih lanjut.

---

## Bagian 2: EDA & Visualisasi (Python)

📌 File: [Klik untuk lihat notebook DOKU.ipynb](https://github.com/Gilangsejati/Doku-E-Wallet-Analisis/blob/main/Studycase-%20Doku-Analisis/scripts/DOKU.ipynb)



### Insight yang Dicari
- Pola belanja pelanggan Premium vs Non-Premium.
- Kategori merchant dengan performa tinggi.
- Pola waktu dan volume transaksi tahunan.

### Tools
- `matplotlib`, `seaborn` untuk visualisasi seperti:
  - Distribusi pengeluaran pelanggan
  - Korelasi antar variabel numerik
  - Heatmap performa kampanye per segmen

---

## Bagian 3: Analisis SQL Lanjutan

📌 File: `sql/analysis_queries.sql`

### Pertanyaan Bisnis & Query SQL:
1. **Kampanye Berkinerja Terbaik**
   - Hitung jumlah transaksi per kampanye
2. **Kategori Pedagang Teratas**
   - Berdasarkan total volume transaksi
3. **Volume dan Pendapatan per Merchant**
4. **Segmentasi Pelanggan**
   - Berdasarkan frekuensi & total pengeluaran
   - Contoh kategori: `Low`, `Medium`, `High Spender`
5. **Performa Kampanye Pemasaran**
   - Bandingkan jumlah & pengeluaran pelanggan Premium vs Non-Premium per kampanye

---

## Bagian 4: Dashboard Looker Studio

📌 File: `dashboard/marketing_dashboard.twbx` atau link `.txt`

### Fitur Dashboard
- Interaktif: filter per kampanye, segmen pelanggan, merchant
- Insight visual:
  - Volume dan pengeluaran per kampanye
  - Top kategori merchant
  - Segmentasi pelanggan dalam chart
  - Distribusi Premium vs Non-Premium dalam keterlibatan kampanye

