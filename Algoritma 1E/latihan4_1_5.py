print("## Program Diskon dan Bonus Toko Buah SEGAR MANIS ##")
print("=====================================================")

# Input data penjualan untuk setiap buah
kiwi_kg = float(input("Berat Kiwi (kg): "))
mangga_kg = float(input("Berat Mangga (kg): "))
alpukat_kg = float(input("Berat Alpukat (kg): "))
apel_kg = float(input("Berat Apel (kg): "))

# Harga per kilogram
harga_kiwi = 30000
harga_mangga = 20000
harga_alpukat = 25000
harga_apel = 40000

# Diskon untuk pembelian lebih dari 5 kg
diskon_kiwi = 5 if kiwi_kg > 5 else 0
diskon_mangga = 2.5 if mangga_kg > 5 else 0
diskon_alpukat = 7 if alpukat_kg > 5 else 0
diskon_apel = 10 if apel_kg > 5 else 0

# Hitung total harga dan diskon
total_kiwi = kiwi_kg * harga_kiwi
total_mangga = mangga_kg * harga_mangga
total_alpukat = alpukat_kg * harga_alpukat
total_apel = apel_kg * harga_apel

potongan_kiwi = total_kiwi * (diskon_kiwi / 100)
potongan_mangga = total_mangga * (diskon_mangga / 100)
potongan_alpukat = total_alpukat * (diskon_alpukat / 100)
potongan_apel = total_apel * (diskon_apel / 100)

total_harga = (
    total_kiwi + total_mangga + total_alpukat + total_apel
    - potongan_kiwi - potongan_mangga - potongan_alpukat - potongan_apel
)

# Tambahan diskon dan bonus
if kiwi_kg + mangga_kg > 20:
    total_harga -= total_harga * 0.07
    print("")
    print("Anda mendapatkan diskon tambahan sebesar 7% dari total penjualan untuk pembelian Kiwi dan Mangga lebih dari 20 kg!")
if alpukat_kg > 10:
    print("")
    print("Anda mendapatkan hadiah payung untuk pembelian Alpukat lebih dari 10 kg!")
if apel_kg > 15:
    print("")
    print("Anda mendapatkan hadiah tas untuk pembelian Apel lebih dari 15 kg!")

# Output total belanja
print("\nDetail Belanja:")
print("Total Kiwi: Rp.", total_kiwi, "(Potongan: Rp.", potongan_kiwi, ")")
print("Total Mangga: Rp.", total_mangga, "(Potongan: Rp.", potongan_mangga, ")")
print("Total Alpukat: Rp.", total_alpukat, "(Potongan: Rp.", potongan_alpukat, ")")
print("Total Apel: Rp.", total_apel, "(Potongan: Rp.", potongan_apel, ")")
print("=====================================================")
print("Total Bayar Setelah Diskon: Rp.", int(total_harga))
