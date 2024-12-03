print("MENGHITUNG JUMLAH & RATA-RATA SEJUMLAH DATA NILAI")
print("CACAH DATA TIDAK DIKETAHUI DENGAN PASTI")
print("PEMBACAAN DATA DIHENTIKAN DENGAN DATA SENTINEL")
print("DATA SENTINEL BERUPA SEMBARANG BILANGAN NEGATIF")
print()

jumlah = 0
cacah = 0

while True:
    data = float(input("MASUKKAN DATA NILAINYA = "))
    if data < 0:  # Data sentinel
        break
    jumlah += data
    cacah += 1

if cacah > 0:
    rata_rata = jumlah / cacah
    print()
    print("JUMLAH DATA          = ", jumlah)
    print("NILAI RATA-RATA      = {:.2f}".format(rata_rata))
else:
    print()
    print("TIDAK ADA DATA YANG DIINPUTKAN")
