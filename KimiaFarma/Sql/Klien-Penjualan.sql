---Jumlah produk dibeli dan jumlah pembayaran klien
SELECT a.nama klien, a.level , COUNT(b.jumlah_barang) total_produk_beli, AVG(b.jumlah_barang * b.harga) rata_rata_pembayaran, SUM(b.jumlah_barang * b.harga) total_pembayaran , b.mata_uang
--INTO fk_klien_2
FROM dbo.fk_klien AS a 
INNER JOIN dbo.fk_penjualan AS  b
ON a.id_customer = b.id_customer
GROUP BY a.nama, a.level, b.mata_uang
ORDER BY total_pembayaran DESC;

--Perbandingan transaksi kelompok apotek dan klinik
SELECT SUM(total_pembayaran)Jmh_penerimaan FROM fk_klien_2

SELECT  a.kelompok , COUNT(b.jumlah_barang) total_produk_beli, AVG(b.jumlah_barang * b.harga) rata_rata_pembayaran, SUM(b.jumlah_barang * b.harga) total_pembayaran, b.mata_uang
FROM dbo.fk_klien AS a
INNER JOIN dbo.fk_penjualan AS  b
ON a.id_customer = b.id_customer
GROUP BY a.kelompok, b.mata_uang
ORDER BY total_pembayaran DESC;

---Detail Klien Apotek
SELECT a.nama klien, a.level, a.kelompok , COUNT(b.jumlah_barang) total_produk_beli, AVG(b.jumlah_barang * b.harga) rata_rata_pembayaran, SUM(b.jumlah_barang * b.harga) total_pembayaran, b.mata_uang
FROM dbo.fk_klien AS a
INNER JOIN dbo.fk_penjualan AS  b
ON a.id_customer = b.id_customer
WHERE a.kelompok = 'Apotek'
GROUP BY a.nama, a.level, a.kelompok, b.mata_uang
ORDER BY total_pembayaran DESC;

---Detail Klien Klinik
SELECT a.nama klien, a.level, a.kelompok , COUNT(b.jumlah_barang) total_produk_beli, AVG(b.jumlah_barang * b.harga) rata_rata_pembayaran, SUM(b.jumlah_barang * b.harga) total_pembayaran, b.mata_uang
FROM dbo.fk_klien AS a
INNER JOIN dbo.fk_penjualan AS  b
ON a.id_customer = b.id_customer
WHERE a.kelompok = 'Klinik'
GROUP BY a.nama, a.level, a.kelompok, b.mata_uang
ORDER BY total_pembayaran DESC;

---Daerah mana dengan penjualan tertinggi dan terendah
SELECT  a.cabang_sales, AVG(B.jumlah_barang) rata_rata_barang_dibeli,  COUNT(b.jumlah_barang) total_produk_beli,SUM(b.jumlah_barang * b.harga) total_pembayaran
FROM dbo.fk_klien AS a
 JOIN dbo.fk_penjualan AS  b
ON a.id_customer = b.id_customer
GROUP BY a.cabang_sales
ORDER BY total_pembayaran DESC;

---Buat tabel baru klien
---SELECT a.nama klien, a.level , COUNT(b.jumlah_barang) total_produk_beli, AVG(b.jumlah_barang * b.harga) rata_rata_pembayaran, SUM(b.jumlah_barang * b.harga) total_pembayaran , b.mata_uang
---INTO fk_klien_2
---FROM dbo.fk_klien AS a 
---INNER JOIN dbo.fk_penjualan AS  b
---ON a.id_customer = b.id_customer
---GROUP BY a.nama, a.level, b.mata_uang
---ORDER BY total_pembayaran DESC;


---Buat tabel baru klien perbandingan
---SELECT  a.kelompok , COUNT(b.jumlah_barang) total_produk_beli, AVG(b.jumlah_barang * b.harga) rata_rata_pembayaran, SUM(b.jumlah_barang * b.harga) total_pembayaran, b.mata_uang
---INTO fk_perbandingan_klien
---FROM dbo.fk_klien AS a
---INNER JOIN dbo.fk_penjualan AS  b
---ON a.id_customer = b.id_customer
---GROUP BY a.kelompok, b.mata_uang
---ORDER BY total_pembayaran DESC;

---Buat tabel baru daerah
---SELECT  a.cabang_sales, AVG(B.jumlah_barang) rata_rata_barang_dibeli, COUNT(b.jumlah_barang) total_produk_beli,SUM(b.jumlah_barang * b.harga) total_pembayaran
---INTO fk_daerah
---FROM dbo.fk_klien AS a
--- JOIN dbo.fk_penjualan AS  b
---ON a.id_customer = b.id_customer
---GROUP BY a.cabang_sales
---ORDER BY total_pembayaran DESC;

---Coretan

---SELECT * , (jumlah_barang * harga) AS total FROM fk_penjualan
---GROUP BY tanggal
---GROUP BY YEAR(tanggal)

---Format date Tahun - Bulan - Tanggal
---SELECT * , (jumlah_barang * harga) AS total FROM fk_penjualan
---WHERE tanggal BETWEEN '20/01/22' AND '02/02/22';






