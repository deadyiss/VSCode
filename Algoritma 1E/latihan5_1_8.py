print("Daftar Harga Bahan Bakar")
print("=========================")
print("Harga Bensin  : Rp. 4500/L")
print("Harga Solar   : Rp. 5000/L")
print("Harga Pertamax: Rp. 7500/L")
print()

jenis = input("Masukkan jenis bahan bakar (B/S/P): ").upper()
liter = float(input("Masukkan jumlah liter: "))

harga_bensin = 4500
harga_solar = 5000
harga_pertamax = 7500

if jenis == 'B':
    total_harga = harga_bensin * liter
    bahan_bakar = "Bensin"
elif jenis == 'S':
    total_harga = harga_solar * liter
    bahan_bakar = "Solar"
elif jenis == 'P':
    total_harga = harga_pertamax * liter
    bahan_bakar = "Pertamax"
else:
    print("Jenis bahan bakar tidak valid!")
    exit()

print(f"\nJenis Bahan Bakar: {bahan_bakar}")
print(f"Jumlah Liter     : {liter:.2f} L")
print(f"Total Harga      : Rp. {total_harga:,.2f}")
