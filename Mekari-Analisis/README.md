📊 Analisis Efektivitas Biaya Skema Penggajian Karyawan Mekari
Proyek ini bertujuan untuk membantu Manajemen Mekari dalam meninjau dan mengevaluasi efektivitas skema penggajian berbasis bulanan yang diterapkan kepada lebih dari 1.400 karyawan (Mekarian) yang tersebar di beberapa cabang di Indonesia.

🧩 Studi Kasus
Mekari merupakan perusahaan SaaS yang berkembang pesat sejak 2015, dan kini memiliki lebih dari 35.000 pengguna. Memasuki tahun ke-7, manajemen ingin mengevaluasi apakah sistem penggajian saat ini masih efisien secara biaya, dengan membandingkan gaji per jam kerja nyata yang dikeluarkan untuk setiap cabang dan bulan.

🎯 Tujuan Analisis
Menghitung gaji per jam untuk setiap cabang dan bulan berdasarkan data jumlah karyawan dan jam kerja aktual.

Menilai efektivitas skema penggajian berdasarkan kombinasi faktor: Gaji, Jam Kerja, dan Masa Kerja.

Mengidentifikasi karyawan dengan efektivitas rendah yang dapat dipertimbangkan untuk PHK demi efisiensi anggaran.

🔧 Teknologi yang Digunakan
Python: Untuk persiapan, pembersihan, transformasi, dan analisis eksploratori data.

SQL: Untuk perhitungan jam kerja, masa kerja, normalisasi data, dan perhitungan skor efektivitas penggajian.

Tableau: Untuk membuat dasbor interaktif guna mendukung pengambilan keputusan strategis selama Rapat Anggaran Tahunan.

📌 Alur Pengerjaan
1. Persiapan & Pembersihan Data (Python)
Menggabungkan beberapa file sumber menjadi satu dataset.

Membersihkan data kosong, anomali pada tanggal, serta formatting kolom.

2. Transformasi Data (Python)
Menghitung jam kerja harian menggunakan data check-in dan check-out.

Menghitung jumlah hari kerja per karyawan setiap bulan.

3. Analisis Eksploratori (EDA)
Visualisasi distribusi gaji, jam kerja, dan masa kerja.

Melihat tren cabang dengan efisiensi tertinggi dan terendah.

4. SQL Lanjutan – Skor Efektivitas Penggajian
Perhitungan:

Jam kerja per bulan (TIMESTAMPDIFF)

Masa kerja (DATEDIFF antara join_date dan resign_date atau current_date)

Normalisasi data: skala 0–1 (Min-Max Scaling)

Perhitungan skor akhir:
