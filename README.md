# IP Geolocation Tracker - Ruby CLI
CLI sederhana untuk mengecek informasi geolokasi IP address.

# Author
Andriano

# Fitur
- Mendapatkan info IP, Negara, Provinsi, Kota, ISP, Latitude/Longitude
- Tampilan CLI berwarna
- Gratis, menggunakan API publik `ip-api.com`

# Requirements
- Ruby >= 2.5
- Internet

# Optional (Linux / Termux)
sudo apt install ruby  (Linux Debian/Ubuntu/Kali)
pkg install ruby       (Termux)

# Install
Clone repository:
git clone https://github.com/gidorahwilson/ipgeolocation.git
cd ipgeolocation

Bikin script executable:
chmod +x ip.rb

Cara Pakai
./ip.rb
atau
ruby ip.rb

Input alamat IP ketika diminta, lalu info geolocation akan muncul.

# Catatan
Gunakan IP publik, bukan lokal (192.168.x.x atau 10.x.x.x)
Tool ini menggunakan API gratis, rate limit mungkin berlaku

# Screenshot
![ipgeolocation](ss.png)
