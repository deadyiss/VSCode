j = int(input("Masukkan Jumlah Karyawan : "))
gp = int(input("Masukkan Gaji Pokok : "))

pajak = 0.1 * gp 
tunjangan = 0.2 * gp 
gaji = gp + tunjangan - pajak
jum_gaji = gaji * j

print("")
print("Pajak Perorangan : {:0,.0f}".format(pajak).replace('$-','-$'))
print("Tunjangan Perorangan : {:0,.0f}".format(tunjangan).replace('$-','-$'))
print("Gaji Perorangan : {:0,.0f}".format(gaji).replace('$-','-$'))
print("Gaji", j, "Orang Karyawan {:0,.0f}".format(jum_gaji).replace('$-','-$'))