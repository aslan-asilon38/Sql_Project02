---Detail produk terjual
SELECT c.nama_barang, COUNT(b.jumlah_barang) total_produk_beli, AVG(b.jumlah_barang * b.harga) rata_rata_pembayaran, SUM(b.jumlah_barang * b.harga) total_pembayaran 
FROM dbo.fk_klien AS a 
INNER JOIN dbo.fk_penjualan AS  b
ON a.id_customer = b.id_customer
INNER JOIN fk_barang c
ON c.kode_barang = b.id_barang
GROUP BY c.nama_barang, c.harga
ORDER BY total_pembayaran DESC;

SELECT c.nama_barang,a.cabang_sales, COUNT(b.jumlah_barang) total_produk_beli, AVG(b.jumlah_barang * b.harga) rata_rata_pembayaran, SUM(b.jumlah_barang * b.harga) total_pembayaran 
FROM dbo.fk_klien AS a 
INNER JOIN dbo.fk_penjualan AS  b
ON a.id_customer = b.id_customer
INNER JOIN fk_barang c
ON c.kode_barang = b.id_barang
WHERE c.nama_barang = 'TRAMADOL KAPSUL 50 MG'
GROUP BY  a.cabang_sales,c.nama_barang, c.harga
ORDER BY total_produk_beli DESC;

SELECT SUM(total_produk_beli) AS total_produk_terjual FROM fk_produk
SELECT SUM(total_pembayaran) AS jmh_penerimaan FROM fk_produk

SELECT c.nama_barang,b.harga, b.jumlah_barang, COUNT(b.jumlah_barang) total_produk_beli, AVG(b.jumlah_barang * b.harga) rata_rata_pembayaran, SUM(b.jumlah_barang * b.harga) total_pembayaran 
FROM dbo.fk_klien AS a 
INNER JOIN dbo.fk_penjualan AS  b
ON a.id_customer = b.id_customer
INNER JOIN fk_barang c
ON c.kode_barang = b.id_barang
GROUP BY c.nama_barang, b.harga, b.jumlah_barang
ORDER BY total_pembayaran DESC;

---Menampilkan produk dengan tanggal
SELECT b.tanggal, a.nama_barang ,a.brand ,b.unit, b.harga, COUNT(b.jumlah_barang) total_barang_dibeli, COUNT(b.jumlah_barang)*b.harga total_pembayaran_produk, b.mata_uang
FROM fk_barang a
INNER JOIN fk_penjualan b
ON a.kode_barang = b.id_barang
GROUP BY b.tanggal,nama_barang,a.brand, b.harga, b.unit, b.mata_uang
ORDER BY b.tanggal ASC;

--Tabel baru
---SELECT  c.nama klien, a.nama_barang produk,b.unit,COUNT(b.jumlah_barang) total_barang_dibeli,SUM(b.jumlah_barang * b.harga) Total_pembayaran, c.cabang_sales cabang
---INTO fk_produk_favorit_klien
---FROM fk_barang a
---INNER JOIN fk_penjualan b
---ON a.kode_barang = b.id_barang
---INNER JOIN fk_klien c
---ON c.id_customer = b.id_customer
---WHERE a.nama_barang = 'ACYCLOVIR DUS' OR a.nama_barang = 'TRAMADOL KAPSUL 50 MG'
---GROUP BY a.nama_barang, b.unit, c.cabang_sales, c.nama
---ORDER BY total_barang_dibeli DESC;

--SELECT c.nama_barang, COUNT(b.jumlah_barang) total_produk_beli, AVG(b.jumlah_barang * b.harga) rata_rata_pembayaran, SUM(b.jumlah_barang * b.harga) total_pembayaran 
--INTO fk_barang2
--FROM dbo.fk_klien AS a 
--INNER JOIN dbo.fk_penjualan AS  b
--ON a.id_customer = b.id_customer
--INNER JOIN fk_barang c
--ON c.kode_barang = b.id_barang
--GROUP BY c.nama_barang

---Coretan
---SELECT a.nama_barang ,a.brand ,b.unit, b.harga, COUNT(b.jumlah_barang) total_barang_dibeli, COUNT(b.jumlah_barang)*b.harga total_pembayaran_produk, b.mata_uang
---INTO fk_barang2
--FROM fk_barang a
---INNER JOIN fk_penjualan b
---ON a.kode_barang = b.id_barang
---GROUP BY a.nama_barang,a.brand, b.harga, b.unit, b.mata_uang
---ORDER BY total_pembayaran_produk DESC;

---SELECT a.nama_barang ,a.brand ,b.unit, COUNT(b.jumlah_barang) total_barang_dibeli, COUNT(b.jumlah_barang) * a.harga total_pembayaran, b.mata_uang
---FROM fk_barang a
---INNER JOIN fk_penjualan b
---ON a.kode_barang = b.id_barang
---GROUP BY a.nama_barang,a.brand,a.harga, b.unit, b.mata_uang
---ORDER BY total_pembayaran DESC;


