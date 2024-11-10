CREATE DATABASE IF NOT EXISTS BUKUDB;
USE BUKUDB;

-- Tabel KATEGORI
CREATE TABLE KATEGORI (
    KATEGORI_ID INT (11) PRIMARY KEY NOT NULL,
    KATEGORI_NAMA VARCHAR(25)
);

-- Tabel PENGARANG
CREATE TABLE PENGARANG (
    PENGARANG_ID CHAR(3) PRIMARY KEY NOT NULL,
    PENGARANG_NAMA VARCHAR(135)
);

-- Tabel PENERBIT
CREATE TABLE PENERBIT (
    PENERBIT_ID CHAR(4) PRIMARY KEY NOT NULL,
    PENERBIT_NAMA VARCHAR(50)
);

-- Tabel BUKU
CREATE TABLE BUKU (
    buku_isbn CHAR(13) NOT NULL PRIMARY KEY,
    buku_judul VARCHAR(75),
    penerbit_id CHAR(4),
    buku_tglterbit DATE,
    buku_jmlh_hlmn INT,
    buku_deskripsi TEXT,
    buku_harga DECIMAL(10,0),
    FOREIGN KEY (penerbit_id) REFERENCES PENERBIT(penerbit_id)
);

-- Insert data into KATEGORI
INSERT INTO KATEGORI (KATEGORI_ID, KATEGORI_NAMA) VALUES
(1, 'Basis Data'),
(2, 'Desain Grafis'),
(3, 'Jaringan Komputer'),
(4, 'Pemrograman'),
(5, 'Web dan Internet'),
(6, 'Office Application');

-- Insert data into PENGARANG
INSERT INTO PENGARANG (PENGARANG_ID, PENGARANG_NAMA) VALUES
('ASW', 'Andi Setiawan'),
('BRH', 'Budi Raharjo'),
('BTO', 'Beni Tito'),
('DAR', 'Dewi Aulia Raharjo'),
('ERD', 'Erik Rusdianto'),
('ERK', 'E Rosdiana K'),
('FDY', 'Fred Hidayat'),
('GZL', 'Abdul Ghozali');

-- Insert data into PENERBIT
INSERT INTO PENERBIT (PENERBIT_ID, PENERBIT_NAMA) VALUES
('PB01', 'Angkasa Raya'),
('PB02', 'Cahaya Ilmu Persada'),
('PB03', 'Sinar Ilmu Perkasa'),
('PB04', 'Gramedia'),
('PB05', 'Sinar Raya'),
('PB06', 'Informatika'),
('PB07', 'Tiga Sekawan'),
('PB08', 'Cipta Ilmu');

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

-- Melihat isi data
SELECT * FROM KATEGORI;

MariaDB [bukudb]> SELECT * FROM pengarang;
+--------------+--------------------+
| pengarang_id | pengarang_nama     |
+--------------+--------------------+
| ASW          | Andi Setiawan      |
| BRH          | Budi Raharjo       |
| BTO          | Beni Tito          |
| DAR          | Dewi Aulia Raharjo |
| ERD          | Erik Rusdianto     |
| ERK          | E Rosdiana K       |
| FDY          | Fred Hidayat       |
| GZL          | Abdul Ghozali      |
+--------------+--------------------+