print("Program Hitung")
print("**************")
bil1 = int(input("Ketik bilangan pertama : "))
bil2 = int(input("Ketik bilangan kedua : "))

hasil = 0

for i in range(bil1):
    hasil = hasil + bil2 
    
bil2 = bil2 - 1
for i in range(bil2):
    print(bil1, " + ", end='')
    
print(bil1, " = ", hasil)