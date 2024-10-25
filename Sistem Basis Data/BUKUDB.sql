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