print("## Program Diskon dan Bonus Toko Buah SEGAR MANIS ##")
print("=====================================================")

# Input berat untuk setiap buah
kiwi_kg = float(input("Berat Kiwi (kg): "))
mangga_kg = float(input("Berat Mangga (kg): "))
alpukat_kg = float(input("Berat Alpukat (kg): "))
apel_kg = float(input("Berat Apel (kg): "))

# Diskon untuk pembelian lebih dari 5 kg
diskon_kiwi = 5 if kiwi_kg > 5 else 0
diskon_mangga = 2.5 if mangga_kg > 5 else 0
diskon_alpukat = 7 if alpukat_kg > 5 else 0
diskon_apel = 10 if apel_kg > 5 else 0

# Cetak potongan diskon
print("\nPotongan Diskon:")
if kiwi_kg > 5:
    print(f"Kiwi: {diskon_kiwi}% (berat {kiwi_kg} kg)")
if mangga_kg > 5:
    print(f"Mangga: {diskon_mangga}% (berat {mangga_kg} kg)")
if alpukat_kg > 5:
    print(f"Alpukat: {diskon_alpukat}% (berat {alpukat_kg} kg)")
if apel_kg > 5:
    print(f"Apel: {diskon_apel}% (berat {apel_kg} kg)")

# Tambahan diskon dan bonus
if kiwi_kg + mangga_kg > 20:
    print("\nTambahan: Diskon 7% untuk total Kiwi dan Mangga (> 20 kg)!")
if alpukat_kg > 10:
    print("Bonus: Anda mendapatkan bonus untuk pembelian Alpukat (> 10 kg)!")
if apel_kg > 15:
    print("Hadiah: Anda mendapatkan hadiah untuk pembelian Apel (> 15 kg)!")
