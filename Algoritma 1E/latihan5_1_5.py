print("Program Membalik Kata dari Belakang")
print("*********************************\n")

kata = input("Tulis kata yang akan dibalik = ")

balik = ' '

for i in kata:
    balik = i + balik
print("Hasilnya : ", balik)