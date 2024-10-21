import math
print('keliling segitiga')

a = int (input('masukkan angka a :'))
b = int (input('masukkan angka b :'))
c = int (input('masukkan angka c :'))
keliling_segitiga = a + b + c

s = keliling_segitiga // 2 
 
luas = math.sqrt(s * (s - a) * (s - b) * (s - c))
 
print (" hasil luas :" , luas )
print (" hasil keliling segitiga adalah : " , keliling_segitiga )



