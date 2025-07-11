# Analisis Efektivitas Biaya Skema Penggajian Karyawan Mekari
Proyek ini bertujuan untuk membantu Manajemen Mekari dalam meninjau dan mengevaluasi efektivitas skema penggajian berbasis bulanan yang diterapkan kepada lebih dari 1.400 karyawan (Mekarian) yang tersebar di beberapa cabang di Indonesia.

### Studi Kasus
Mekari merupakan perusahaan SaaS yang berkembang pesat sejak 2015, dan kini memiliki lebih dari 35.000 pengguna. Memasuki tahun ke-7, manajemen ingin mengevaluasi apakah sistem penggajian saat ini masih efisien secara biaya, dengan membandingkan gaji per jam kerja nyata yang dikeluarkan untuk setiap cabang dan bulan.

### Tujuan Analisis
- Menghitung gaji per jam untuk setiap cabang dan bulan berdasarkan data jumlah karyawan dan jam kerja aktual.

- Menilai efektivitas skema penggajian berdasarkan kombinasi faktor: Gaji, Jam Kerja, dan Masa Kerja.

- Mengidentifikasi karyawan dengan efektivitas rendah yang dapat dipertimbangkan untuk PHK demi efisiensi anggaran.

### Teknologi yang Digunakan
- Python: Untuk persiapan, pembersihan, transformasi, dan analisis eksploratori data.

- SQL: Untuk perhitungan jam kerja, masa kerja, normalisasi data, dan perhitungan skor efektivitas penggajian.

- Tableau: Untuk membuat dasbor interaktif guna mendukung pengambilan keputusan strategis selama Rapat Anggaran Tahunan.

# Alur Pengerjaan
## Persiapan & Pembersihan Data (Python)
- Menggabungkan beberapa file sumber menjadi satu dataset.

- Membersihkan data kosong, anomali pada tanggal, serta formatting kolom.

  

### Preprocessing Data (Python)
📌 File:  [Analisis Mekari with python](https://github.com/Gilangsejati/Doku-E-Wallet-Analisis/blob/main/Mekari-Analisis/scripts/Data_Preprocessing_Mekari.ipynb)

- Menghitung jam kerja harian menggunakan data check-in dan check-out.

- Menghitung jumlah hari kerja per karyawan setiap bulan.

  

### Analisis Eksploratori (EDA)
 📌 File: [Analisis Mekari with python](https://github.com/Gilangsejati/Doku-E-Wallet-Analisis/blob/main/Mekari-Analisis/scripts/EDA_Mekari_.ipynb)

- Visualisasi distribusi gaji, jam kerja, dan masa kerja.

- Melihat tren cabang dengan efisiensi tertinggi dan terendah.

  

## SQL Lanjutan – Skor Efektivitas Penggajian
 📌 File: [Analisis Mekari with SQL](https://github.com/Gilangsejati/Doku-E-Wallet-Analisis/blob/main/Mekari-Analisis/sql/sql-analis-mekari.sql)

- Jam kerja per bulan (TIMESTAMPDIFF)

- Masa kerja (DATEDIFF antara join_date dan resign_date atau current_date)

- Normalisasi data: skala 0–1 (Min-Max Scaling)

- Menandai karyawan dengan skor efektivitas rendah sebagai kandidat PHK.

  

## Visualisasi Dashboard (Tableau)
📌 File: [Dashboard Mekari](https://github.com/Gilangsejati/Doku-E-Wallet-Analisis/blob/main/Mekari-Analisis/dashboard/Dashboard%201%20(7).png)
          
- Gaji per jam per cabang per bulan

- Peta cabang dengan efektivitas tertinggi dan terendah

- Tren jam kerja vs efektivitas

- Tabel kandidat PHK berdasarkan skor efektivitas
  
  
  
Tableau : [Tableau Public](https://public.tableau.com/app/profile/gilang.gemilang/vizzes)

## Conclusion 
Ketidakseimbangan pada dataset terjadi karena terdapat beberapa karyawan yang tidak melakukan check-in dan check-out di cabang serta bulan tertentu. Akibatnya, dalam perhitungan analisis gaji, terdapat dua cabang yang hasilnya NULL atau tidak menunjukkan aktivitas check-in dan check-out pada pertengahan tahun.

## Rekomendasi 
- mengkaji ulang alokasi anggaran penggajian
- menerapkan skema penggajian berbasis performa
- karyawan dengan skor efektivitas tinggi dapat dilibatkan dalam program mentoring

