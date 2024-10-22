print("Program Menentukan Bilangan yang Terbesar")
print("*****************************************")
a = int(input("masukkan bilangan ke 1 = "))
b = int(input("masukkan bilangan ke 2 = "))
c = int(input("masukkan bilangan ke 3 = "))

print('\n')


if(a > b) and (a > c):
    print("bilangan ke 1 paling besar")
elif(b > a) and (b > c):
    print('bilangan ke 2 paling besar')
elif(c > a) and (c > b):
    print("bilangan ke 3 paling besar")
else:
    print("ada dua atau tiga masukan memiliki nilai sama")