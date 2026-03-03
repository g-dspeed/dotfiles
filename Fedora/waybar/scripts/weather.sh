#!/bin/bash
# Masukkan koordinatmu di sini (Lat,Long)
LOC="-6.7705002504257354, 106.77885444142372"

#!/bin/bash
# Pastikan koordinat benar (Latitude,Longitude)
LOC="-6.91,107.61"

# 1. Tambahkan --connect-timeout agar tidak macet
# 2. Gunakan ~ sebelum koordinat untuk memaksa deteksi lokasi
DATA=$(curl -s --connect-timeout 7 "wttr.in/~${LOC}?format=1")

# Validasi: Pastikan DATA tidak kosong dan tidak berisi pesan error
if [[ -n "$DATA" && ! "$DATA" == *"Unknown"* && ! "$DATA" == *"Service"* ]]; then
    # Output format JSON untuk Waybar
    echo "{\"text\": \"$DATA\"}"
else
    # Jika gagal, tetap kirim N/A agar modul tidak hilang
    echo "{\"text\": \"N/A\"}"
fi
