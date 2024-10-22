print("Program Seleksi Ganjil atau Genap")
print('*********************************')
bilangan = int(input("masukkan bilangan ke 1 = "))
print('\n')

if bilangan % 2 == 1:
    print(bilangan, "adalah bilangan ganjil")
else:
    print(bilangan, "adalah bilangan genap")