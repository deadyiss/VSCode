while True:
    print()
    print('Program Perhitungan Menggunakan Perulangan')
    print('++++++++++++++++++++++++++++++++++++++++++')
    print()
    
    bil1 = int(input("Ketik Bilangan Pertama = "))
    bil2 = int(input("Ketik Bilangan Kedua = "))
    
    hasil = 0
    proses = str(bil1)  # Menyimpan proses pengurangan sebagai string
    
    while bil1 >= bil2:
        bil1 -= bil2
        hasil += 1
        proses = proses + " - " + str(bil2)  # Menambahkan proses pengurangan ke string
    
    print(proses + " = " + str(hasil) + " kali pengurangannya")
    print()
    
    ulang = input("Mau Ulang Program Tekan [Y] / Keluar [T] = ")
    
    if ulang == 'T':  # Langsung memeriksa input tanpa mengubah huruf
        break
