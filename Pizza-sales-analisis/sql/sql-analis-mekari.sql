-- Hitung jam kerja dan masa kerja Gunakan fungsi TIMESTAMPDIFF() untuk menghitung jam kerja dan masa kerja.
-- Gunakan fungsi COALESCE() untuk menangani nilai resign_date yang hilang.

WITH work_data AS (
    SELECT 
        e.employe_id,
        e.salary,
        e.join_date,
        COALESCE(e.resign_date, CURDATE()) AS effective_resign_date,
        TIMESTAMPDIFF(DAY, e.join_date, COALESCE(e.resign_date, CURDATE())) AS tenure_days,
        COUNT(DISTINCT t.date) AS total_work_days,
        SUM(TIMESTAMPDIFF(SECOND, t.checkin, t.checkout) / 3600) AS total_work_hours
    FROM employee_dataset e
    LEFT JOIN timesheet_dataset t ON e.employe_id = t.employee_id
    GROUP BY e.employe_id, e.salary, e.join_date, e.resign_date
) 
SELECT * FROM work_data;


-- Normalisasikan Data (Gaji, Jam Kerja, dan Masa Kerja)
WITH work_data AS (
    SELECT 
        e.employe_id,
        e.salary,
        e.join_date,
        COALESCE(e.resign_date, CURDATE()) AS effective_resign_date,
        TIMESTAMPDIFF(DAY, e.join_date, COALESCE(e.resign_date, CURDATE())) AS tenure_days,
        COUNT(DISTINCT t.date) AS total_work_days,
        SUM(TIMESTAMPDIFF(SECOND, t.checkin, t.checkout) / 3600) AS total_work_hours
    FROM employee_dataset e
    LEFT JOIN timesheet_dataset t ON e.employe_id = t.employee_id
    GROUP BY e.employe_id, e.salary, e.join_date, e.resign_date
),
normalized_data AS (
    SELECT 
        employe_id,
        salary,
        total_work_hours,
        tenure_days,
        total_work_days,
        salary / MAX(salary) OVER () AS salary_score,
        total_work_hours / MAX(total_work_hours) OVER () AS work_hours_score,
        tenure_days / MAX(tenure_days) OVER () AS tenure_score
    FROM work_data
)
SELECT * FROM normalized_data;


-- Hitung Skor Efektivitas Penggajian dengan rata-rata tertimbang dari tiga skor di bawah ini:
-- a. Skor Gaji: Bobot = 0,3
-- b. Skor Jam Kerja: Bobot = 0,5
-- c. Skor Masa Jabatan: Bobot = 0,2
-- Menghitung Skor Efektivitas Penggajian Menggunakan rumus = (0,3×Skor Gaji) + (0,5×Skor Jam Kerja) + (0,2×Skor Masa Jabatan)

WITH work_data AS (
    SELECT 
        e.employe_id,
        e.salary,
        e.join_date,
        COALESCE(e.resign_date, CURDATE()) AS effective_resign_date,
        TIMESTAMPDIFF(DAY, e.join_date, COALESCE(e.resign_date, CURDATE())) AS tenure_days,
        COUNT(DISTINCT t.date) AS total_work_days,
        SUM(TIMESTAMPDIFF(SECOND, t.checkin, t.checkout) / 3600) AS total_work_hours
    FROM employee_dataset e
    LEFT JOIN timesheet_dataset t ON e.employe_id = t.employee_id
    GROUP BY e.employe_id, e.salary, e.join_date, e.resign_date
),
normalized_data AS (
    SELECT 
        employe_id,
        salary,
        total_work_hours,
        tenure_days,
        total_work_days,
        salary / MAX(salary) OVER () AS salary_score,
        total_work_hours / MAX(total_work_hours) OVER () AS work_hours_score,
        tenure_days / MAX(tenure_days) OVER () AS tenure_score
    FROM work_data
)
SELECT 
    employe_id,
    salary,
    total_work_hours,
    tenure_days,
    total_work_days,
    salary_score,
    work_hours_score,
    tenure_score,
    (0.3 * salary_score) + (0.5 * work_hours_score) + (0.2 * tenure_score) AS effectiveness_score
FROM normalized_data;


-- Identifikasi Kandidat PHK effectiveness score < 0.5

WITH low_candidat AS (
    SELECT 
        e.employe_id,
        e.salary,
        e.join_date,
        COALESCE(e.resign_date, CURDATE()) AS effective_resign_date,
        TIMESTAMPDIFF(DAY, e.join_date, COALESCE(e.resign_date, CURDATE())) AS tenure_days,
        COUNT(DISTINCT t.date) AS total_work_days,
        SUM(TIMESTAMPDIFF(SECOND, t.checkin, t.checkout) / 3600) AS total_work_hours,
        -- Hitung salary_score berdasarkan rasio gaji terhadap gaji maksimum
        e.salary / MAX(e.salary) OVER () AS salary_score,
        -- Hitung work_hours_score berdasarkan rasio jam kerja terhadap jam kerja maksimum
        SUM(TIMESTAMPDIFF(SECOND, t.checkin, t.checkout) / 3600) / MAX(SUM(TIMESTAMPDIFF(SECOND, t.checkin, t.checkout) / 3600)) OVER () AS work_hours_score,
        -- Hitung tenure_score berdasarkan rasio masa kerja terhadap masa kerja maksimum
        TIMESTAMPDIFF(DAY, e.join_date, COALESCE(e.resign_date, CURDATE())) / MAX(TIMESTAMPDIFF(DAY, e.join_date, COALESCE(e.resign_date, CURDATE()))) OVER () AS tenure_score,
        -- Hitung skor efektivitas
        (0.3 * (e.salary / MAX(e.salary) OVER ())) + 
        (0.5 * (SUM(TIMESTAMPDIFF(SECOND, t.checkin, t.checkout) / 3600) / MAX(SUM(TIMESTAMPDIFF(SECOND, t.checkin, t.checkout) / 3600)) OVER ())) + 
        (0.2 * (TIMESTAMPDIFF(DAY, e.join_date, COALESCE(e.resign_date, CURDATE())) / MAX(TIMESTAMPDIFF(DAY, e.join_date, COALESCE(e.resign_date, CURDATE()))) OVER ())) AS effectiveness_score
    FROM employee_dataset e
    LEFT JOIN timesheet_dataset t ON e.employe_id = t.employee_id
    GROUP BY e.employe_id, e.salary, e.join_date, e.resign_date
)
SELECT
    employe_id,
    salary,
    total_work_hours,
    total_work_days,
    work_hours_score,
    tenure_score,
    effectiveness_score
FROM low_candidat
WHERE effectiveness_score < 0.5 -- Tentukan ambang batas untuk efektivitas rendah
ORDER BY effectiveness_score ASC;



-- explore
SELECT 
    e.employe_id,
    e.salary,
    COUNT(DISTINCT t.date) AS total_work_days
FROM employee_dataset e
LEFT JOIN timesheet_dataset t ON e.employe_id = t.employee_id
GROUP BY e.employe_id,  e.salary;


SELECT 
    e.branch_id,
    DATE_FORMAT(t.date, '%Y-%m') AS month,
    COUNT(DISTINCT e.employe_id) AS total_employees,
    SUM(e.salary) / SUM(TIMESTAMPDIFF(SECOND, t.checkin, t.checkout) / 3600) AS avg_salary_per_hour
FROM employee_dataset e
LEFT JOIN timesheet_dataset t ON e.employe_id = t.employee_id
WHERE t.date IS NOT NULL
GROUP BY e.branch_id, DATE_FORMAT(t.date, '%Y-%m');


