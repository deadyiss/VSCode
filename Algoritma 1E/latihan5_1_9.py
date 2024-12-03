# Program untuk menampilkan angka ganjil dari 1 sampai 100
print("Angka Ganjil dari 1 sampai 100")
print("=============================")

for i in range(1, 101):
    if i % 2 != 0:  # Mengecek apakah angka ganjil
        print(i, end=' ')

print()  # Pindah ke baris baru setelah mencetak semua angka
