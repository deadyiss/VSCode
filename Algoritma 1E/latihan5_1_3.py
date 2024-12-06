print("Program Nilai Kurs")
print("****************\n")

a = int(input("Masukkan nilai kurs 1$ = Rp. "))

b=0
n=6

for i in range(1, n):
    b=b+a
    print("Kurs ",i, "$ = Rp. ", b)
    
c=b/(n-1)
print("Rata-rata 1$ = Rp. ", c)
if c > 9000:
    print("Jual Dollar")
elif c < 65000:
    print("Dollar Simpan")
else:
    print()