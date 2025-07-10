# Doku Marketing Campaign Analysis (2021–2024)

Proyek ini bertujuan untuk menganalisis performa kampanye pemasaran, segmentasi pelanggan, dan kinerja merchant menggunakan data transaksi dari tahun 2021 hingga 2024. Analisis dilakukan menggunakan Python, SQL, dan Tableau.

---

## Analisis with python

📌 File: [Analis Doku with python](https://github.com/Gilangsejati/Doku-E-Wallet-Analisis/blob/main/Studycase-%20Doku-Analisis/scripts/DOKU.ipynb)

### Tahapan yang Dilakukan
- **Filter data tahun 2021–2024** dari dataset mentah.
- **Cleaning**: menghapus nilai kosong, mengoreksi tipe data, dan menghapus duplikat.
- **KYC Labeling**: menambahkan kolom `is_premium` berdasarkan data:
  - Jika kolom **kota**, **pekerjaan**, dan **usia** tidak kosong → pelanggan dianggap **Premium**.
- **Muat ke Pandas DataFrame** untuk analisis lebih lanjut.

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

## Analisis SQL Lanjutan

📌 File: [SQL query analisis](https://github.com/Gilangsejati/Doku-E-Wallet-Analisis/blob/main/Studycase-%20Doku-Analisis/sql/sql-analisis-doku.sql)

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

## Dashboard Looker Studio

📌 File:  [Dashboard looker studio](https://github.com/Gilangsejati/Doku-E-Wallet-Analisis/blob/main/Studycase-%20Doku-Analisis/dashboard/Doku_champaign.pdf)
### Fitur Dashboard
- Interaktif: filter per tanggal, campaign, merchant
- Insight visual:
  - Total transaksi campaign
  - Top Pendapatan merchant
  - Segmentasi pelanggan berdasarkan rata-rata paid_amount
  - Tren transaksi bulanan

## Insight
Berdasarkan analisis dashboard kampanye DOKU, kampanye bertipe diskon kecil seperti "CEBAN" terbukti paling efektif menarik transaksi dalam jumlah besar. Sebagian besar pendapatan berasal dari beberapa merchant besar, menunjukkan pentingnya kemitraan strategis. Pengguna Premium mendominasi aktivitas transaksi, namun segmen Non-Premium tetap memberikan kontribusi yang signifikan. Terdapat pola musiman dengan lonjakan transaksi pada bulan-bulan tertentu seperti Agustus, serta rata-rata frekuensi transaksi per pengguna yang cukup baik, yaitu sekitar 4–5 kali. Dengan total lebih dari 100 ribu transaksi dari 23 ribu pelanggan unik, DOKU menunjukkan potensi besar dalam mempertahankan dan mengembangkan basis penggunanya.

## Rekomendasi
Fokuskan strategi kampanye pada promosi bertipe diskon langsung bernilai kecil yang terbukti efektif, perkuat kemitraan dengan merchant bernilai tinggi, dan tingkatkan loyalitas pelanggan Premium sembari mendorong konversi dari Non-Premium. Selain itu, manfaatkan momentum musiman untuk peluncuran kampanye besar, serta terapkan segmentasi pelanggan berdasarkan frekuensi dan pengeluaran untuk kampanye yang lebih terarah dan efisien.





