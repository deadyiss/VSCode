nama = input("Masukkan Nama Sales : ")
penjualan = int(input("Masukkan Total Penjualan : "))
komisi = 0.05 * penjualan

print("Nama Karyawan", nama)
print("Komisi : {:0,.0f}".format(komisi).replace('$-','-$'))