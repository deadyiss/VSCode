print("## NPM  : 2410010187                    ##")
print("## NAMA : Dhea Arimbi Almalita          ##")
print("## Program Python Diskon Potongan Harga ##")
print("==========================================")

total_belanja = int(input("Total belanja: Rp. "))

if total_belanja < 150000:
    diskon = 0
    print("Maaf, anda tidak mendapatkan diskon")
elif 150000 <= total_belanja <= 500000:
    diskon = 0.10
    print("Selamat, anda mendapatkan diskon 10%")
elif 550000 <= total_belanja <= 1000000:
    diskon = 0.15
    print("Selamat, anda mendapatkan diskon 15%")
else:
    diskon = 0.20
    print("Selamat, anda mendapatkan diskon 20%")
    
potongan = total_belanja * diskon
bayar = total_belanja - potongan
print("Anda mendapatkan potongan sebesar Rp.",potongan)
print("Total bayar: Rp.",bayar)

    
