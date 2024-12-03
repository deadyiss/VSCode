print("Program Menampilkan Bintang")
print("===========================")

print()

bintang = int(input('Masukkan banyaknya bintang : '))
print()

for i in range(bintang):
    print(' ' * i, end='')
    for j in range(bintang):
        print('*', end='')
    print()

