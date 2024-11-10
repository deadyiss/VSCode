/* Membuat database */
CREATE DATABASE db_rmh_skt;
/* Melihat list database */
SHOW DATABASES;
/* Membuka/menggunakan database */
USE db_rmh_skt;
/* Menghapus database */
DROP DATABASE db_rmh_skt;

-- A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).

/* Membuat tabel dengan primary key */
CREATE TABLE pasien (
No_RM CHAR (5) PRIMARY KEY, -- Char : string contain letter, number, special char from 0 - 255. Def 1
nama_pasien VARCHAR (35), -- VARCHAR : same as char. 0 - 65535
alamat TEXT ); -- TEXT : Holds a string with a maximum length of 65,535 bytes

CREATE TABLE pasien (
No_RM INT (11),
nama_pasien VARCHAR (35),
alamat TEXT,
PRIMARY KEY (No_RM) );

/* Membuat tabel foreign key */
CREATE TABLE pemeriksaaan (
no_pemeriksaan INT (11) PRIMARY KEY
NO_RM CHAR (5),
hari VARCHAR (15),
jam_periksa TIME,   
FOREIGN KEY (No_RM) REFERENCES pasien (NO_RM) );

CREATE TABLE penerbit(
penerbit_id CHAR (4) PRIMARY KEY,
penerbit_nama VARCHAR (50)
);

CREATE TABLE buku (
buku_isbn CHAR (13),
buku_judul VARCHAR (75),
penerbit_id CHAR (4),
buku_tglterbit DATE, -- A date. Format: YYYY-MM-DD. The supported range is from '1000-01-01' to '9999-12-31'
buku_jmlh_hlmn INT (11),
buku_deskripsi TEXT,
buku_harga DECIMAL (10.0),
PRIMARY KEY (buku_isbn),
FOREIGN KEY (penerbit_id) REFERENCES penerbit (penerbit_id) 
);

/* Menampilkan struktur tabel */
DESC pasien;
DESCRIBE pasien;

/* Menghapus Field */
ALTER TABLE buku DROP buku_deskripsi;

/* Menghapus tabel */
DROP TABLE pelanggan;

/* Menambah kolom pada tabel */
ALTER TABLE buku ADD buku_deskripsi TEXT;

/* Menambah kolom pada tabel dengan urutan */
ALTER TABLE buku ADD buku_deskripsi VARCHAR (15);
ALTER TABLE buku ADD buku_deskripsi VARCHAR (15) AFTER buku_jmlh_hlmn;
ALTER TABLE buku ADD buku_deskripsi VARCHAR (15) first;

/* Membuat tabel pada database */
CREATE TABLE pelanggan (                   /* pelanggan merupakan nama tabel yang akan dibuat. */
id_pelanggan varchar(5) NOT NULL,          /* id_pelanggan, nm_pelanggan, alamat, telepon dan email merupakan nama field. */
nm_pelanggan varchar(30) NOT NULL,         /* varchar dan text merupakan tipe data dari field  */
alamat text,                               /* 5, 10, di belakang tipe data merupakan panjang maksimal dari suatu field. */
telepon varchar (20),                      /* Untuk tipe data date dan text (juga date dan blob) panjang karakter maksimalnya tidak perlu ditentukan. */
email varchar (50),                        /* PRIMARY KEY merupakan perintah untuk menentukan field mana yang akan dijadikan primary key pada tabel. */ 
PRIMARY KEY(id_pelanggan) 
);

/* Melihat list tabel */
SHOW TABLES; 
/* Melihat detail tabel */
DESC pelanggan;
/* Melihat list data di tabel */
SELECT * FROM KATEGORI;

/* Mengubah nama tabel */
RENAME TABLE tabel_buku to buku;
ALTER TABLE buku RENAME TO buku_tb;

/* Menambah primary key dan foreign key pada tabel yang sudah jadi /// References = tabel referensi*/
ALTER TABLE pelanggan ADD PRIMARY KEY(id_pelanggan);
ALTER TABLE pelanggan ADD FOREIGN KEY(id_pelanggan) REFERENCES tb_dokter (td_dokter); 

/* Merubah tipe data */
ALTER TABLE pelanggan MODIFY nomor_buku INT(8);

/* Merubah nama data */
ALTER TABLE pelanggan CHANGE nomor_buku nomor INT(8);

/* Menambahkan data pada tabel */

INSERT INTO kategori VALUES
(1,'Sistem Basis Data'),
(2,'Desain Grafis'),
(3,'Jaringan Komputer'),
(4,'Pmerograman');

INSERT INTO kategori (kategori_id, kategori_nama)
VALUES
(5,'Web dan Internet'),
(6,'Office Applications');

/* Command untuk mengedit tabel */
ALTER TABLE nama_tabel alter_options;

➢ ADD definisi_field_baru \\ ALTER TABLE pelanggan ADD tgllahir date NOT NULL; 
Option ini digunakan untuk menambahkan field baru dengan “definisi_field_baru” (nama field, tipe dan option lain). 

➢ ADD INDEX nama_index 
Option ini digunakan untuk menambahkan index dengan nama “nama_index” pada tabel. 

➢ ADD PRIMARY KEY (field_kunci) \\ ALTER TABLE pelanggan ADD PRIMARY KEY(id_pelanggan);
Option untuk menambahkan primary key pada tabel 

➢ CHANGE field_yang_diubah definisi_field_baru 
Option untuk mengubah field_yang_diubah menjadi definisi_field_baru 

➢ MODIFY definisi_field \\ ALTER TABLE pelanggan MODIFY tgllahir varchar(8) NOT NULL;
Option untuk mengubah suatu field menjadi definisi_field 

➢ DROP nama_field \\ ALTER TABLE pelanggan DROP tgllahir;
Option untuk menghapus field nama_field 

➢ RENAME TO nama_tabel_baru \\ RENAME TABLE pelanggan TO plg; \\ ALTER TABLE plg RENAME TO pelanggan;
Option untuk mengganti nama tabel

-- DML
-- Menampilkan data
SELECT
-- Mengupdate data
UPDATE
-- Menghapus data
DELETE
-- Memasukkan data
INSERT

-- DDL
-- Membuat data
CREATE

-- Mengedit data
ALTER

-- Menghapus data
DROP

-- Merubah data
UPDATE BUKU SET BUKU_DESKRIPSI = 'Ini adalah buku tentang photoshop' WHERE buku_isbn = '222-34222-1-0';

-- Merubah data pada 2 kolom
UPDATE buku SET BUKU_DESKRIPSI = 'buku best Seller',
buku_harga = 5000
WHERE penerbit_id = 'PB02';

-- Menghapus data pada tabel
DELETE FROM BUKU WHERE buku_isbn = '222-34222-1-0';

-- Menampilkan data pada kolom terpilih
SELECT buku_judul, buku_harga FROM buku;

-- Menampilkan data dengan alias
SELECT
a.buku_judul,
a.buku_jmlh_hlmn,
a.buku_harga
FROM buku a;

-- Memasukkan data ke tabel buku
INSERT INTO buku (buku_isbn, buku_judul, penerbit_id, buku_tglterbit, buku_jmlh_hlmn, buku_harga)
VALUES ('222-34222-1-0','Mudah Belajar Photoshop','PB01','2003-07-03',433,76000),
('222-34222-1-1','Panduan Praktis Menggunakan Coreldraw','PB02','2004-03-15',385,85000),
('666-96771-2-0','Panduan Membangun Jaringan TCP/IP','PB08','2006-08-02',200,115000),
('666-96771-2-1','Implementasi TCP/IP di Linux','PB08','2008-11-21',250,89000),
('777-76723-5-0','Cara Belajar Cepat PHP 6','PB07','2010-05-02',600,135000),
('777-76723-5-1','Membuat Aplikasi Web dengan ASP','PB07','2004-08-01',180,145000),
('777-76723-5-2','Belajar Sendiri Internet Marketing','PB07','2007-01-24',250,1250000),
('777-76723-5-3','Panduan Menggunakan Yahoo dan Google','PB07','2014-11-01',400,750000),
('888-96771-3-0','Pemrograman Pascal','PB08','2015-01-23',328,135000),
('888-96771-3-1','Pemrograman Java','PB06','2011-03-03',550,150000),
('888-96771-3-2','Pemrograman C untuk Hardware','PB05','2009-05-21',320,155000),
('888-96771-3-3','Menjadi Master C++','PB06','2010-09-11',400,145000),
('888-96771-3-4','Mudah Belajar DELPHI','PB05','2010-04-25',355,140000),
('888-86771-3-5','Visual Basic','PB02','2005-07-09',455,130000),    
('979-96446-9-0','Panduan Basis Data','PB06','2012-02-12',250,115000),
('979-96446-9-1','Menguasai SQL','PB01','2013-11-09',185,95000);

-- Menampilkan data sesuai kebutuhan informasi
SELECT
buku_judul AS JUDUL,
buku_jmlh_hlmn AS HALAMAN,
buku_harga AS HARGA
FROM buku WHERE buku_harga >70000;

-- Menampilan data dari 2 tabel
SELECT
a.buku_judul AS JUDUL,  -- a adalah variable // menampilkan data dengan alias
a.buku_harga AS HARGA,
b.penerbit_nama AS NAMA_PENERBIIT
FROM buku a, penerbit b
WHERE a.penerbit_id = b.penerbit_id;

-- Menampilkan data dengan rentang tertentu
SELECT * FROM buku
WHERE buku_jmlh_hlmn BETWEEN 200 AND 400;

-- Menampilkan data dengan logika and-or
SELECT * FROM buku
WHERE buku_harga > 50000 AND
buku_jmlh_hlmn >1000;

SELECT * FROM buku
WHERE buku_harga > 50000 OR
buku_jmlh_hlmn >1000;

SELECT * FROM buku
WHERE buku_harga > 45000
AND penerbit_id = 'PB02';

-- Menampilkan data dengan batas tertentu, dimulai dari 0
SELECT * FROM buku LIMIT 2; -- 2 Teratas
SELECT * FROM buku LIMIT 2,5; -- Dimulai dari data ke 2 sebanyak 2 teratas 

-- Menampilkan data tanpa duplikasi
SELECT DISTINCT penerbit_id FROM buku;

-- Mengurutkan data
SELECT * FROM buku ORDER BY penerbit_id;

SELECT * FROM buku ORDER BY buku_jmlh_hlmn DESC;

-- Menampilkan banyaknya data pada suatu tabel // type data harus string
SELECT COUNT(buku_isbn) FROM buku;

-- Menampilkan rata rata pada kolom tertentu // type data harus numerik
SELECT AVG(buku_harga) FROM buku;

-- Menampilkan jumlah pada kolom tertentu
SELECT SUM(buku_harga) FROM buku;