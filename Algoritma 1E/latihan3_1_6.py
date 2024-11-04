print("Program menghitung Gaji Karyawan")
print("********************************")

masa_kerja = int(input("Masukkan masa kerja karyawan (dalam tahun) : "))
pegawai_tetap = input("Apakah karyawan pegawai tetap? (ya/tidak) : ")
sudah_berkeluarga = input("Apakah karyawan sudah berkeluarga (ya/tidak) : ")
gaji_pokok = float(input("Masukkan gaji pokok : "))

if masa_kerja > 5:
    bonus = 0.15 * gaji_pokok
else:
    bonus = 0
    
if pegawai_tetap == "ya":
    transport = 50000
else:
    transport = 0
    
if sudah_berkeluarga == "ya":
    tunjangan = 0.1 * gaji_pokok
else:
    tunjangan = 0
    
gaji_bersih = gaji_pokok + bonus + tunjangan + transport

print("Gaji bersih karyawan adalah : Rp ", gaji_bersih)