print("Program Kalkulator Sederhana")
print("****************************")
print("\n")
print("Pilih Menu")
print('========> 1. Penjumlahan')
print('          2. Pengurangan')
print('          3. Perkalian')
print('          4. Pembagian')
print('\n')
pilihan = int(input("Masukkan Pilihan = "))
print('\n')

if pilihan == 1:
    print("Penjumlahan")
    print('=====================\n')
    print('\n')
    bil1 = int(input("Masukkan bilangan 1 : "))
    bil2 = int(input("Masukkan bilangan 2 : "))
    jumlah = bil1 + bil2
    print("Hasil penjumlahan adalah : ", jumlah)
elif pilihan == 2:
    print("Pengurangan")
    print('=====================\n')
    print('\n')
    bil1 = int(input("Masukkan bilangan 1 : "))
    bil2 = int(input("Masukkan bilangan 2 : "))
    kurang = bil1 - bil2
    print("Hasil pengurangan adalah : ", kurang)
elif pilihan == 3:
    print("Perkalian")
    print("==============\n")
    print('\n') 
    bil1 = int(input("Masukkan bilangan 1 : "))
    bil2 = int(input("Masukkan bilangan 2 : "))
    kali = bil1 * bil2
    print("Hasil perkalian adalah : ", kali)
elif pilihan == 4:
    print("Pembagian")
    print("==============\n")
    print('\n')
    bil1 = int(input("Masukkan bilangan 1 : "))
    bil2 = int(input("Masukkan bilangan 2 : "))
    bagi = bil1 / bil2
    print("Hasil pembagian adalah : ", bagi)
else:
    print("Pilihan Menu Tidak Ada")