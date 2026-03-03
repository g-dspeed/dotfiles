#!/bin/bash
# Beri waktu 3 detik buat kamu napas
sleep 3
# Jalankan hyprlock di background
hyprlock &
# Tunggu sebentar sampai layarnya muncul sempurna
sleep 1
# Ambil screenshot pakai grim
grim ~/Pictures/Screenshots/lockscreen_$(date +%Y%m%d_%H%M%S).png
echo "Screenshot saved to Pictures/Screenshots!"
