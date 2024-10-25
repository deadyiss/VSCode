/* Membuat database */
CREATE DATABASE db_rmh_skt;
/* Melihat list database */
SHOW DATABASES;
/* Membuka/menggunakan database */
USE db_rmh_skt;
/* Menghapus database */
DROP DATABASE db_rmh_skt;


/* Membuat tabel dengan primary key */
CREATE TABLE pasien (
No_RM CHAR (5) PRIMARY KEY,
nama_pasien VARCHAR (35),
alamat TEXT );

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
buku_tglterbit DATE,
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
