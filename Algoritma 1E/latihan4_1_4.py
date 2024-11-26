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

match pilihan:
    case 1:
        print("Penjumlahan")
        print('=====================\n')
    
        bil1 = int(input("Masukkan bilangan 1 : "))
        bil2 = int(input("Masukkan bilangan 2 : "))
        jumlah = bil1 + bil2
        print("Hasil penjumlahan adalah : ", jumlah)
    case 2:
        print("Pengurangan")
        print('=====================\n')

        bil1 = int(input("Masukkan bilangan 1 : "))
        bil2 = int(input("Masukkan bilangan 2 : "))
        kurang = bil1 - bil2
        print("Hasil pengurangan adalah : ", kurang)
    case 3:
        print("Perkalian")
        print("==============\n")
     
        bil1 = int(input("Masukkan bilangan 1 : "))
        bil2 = int(input("Masukkan bilangan 2 : "))
        kali = bil1 * bil2
        print("Hasil perkalian adalah : ", kali)
    case 4:
        print("Pembagian")
        print("==============\n")
    
        bil1 = int(input("Masukkan bilangan 1 : "))
        bil2 = int(input("Masukkan bilangan 2 : "))
        bagi = bil1 / bil2
        print("Hasil pembagian adalah : ", bagi)
    case _:
        print("Pilihan Menu Tidak Ada")