#!/usr/bin/env ruby
# CLI IP Geolocation - Ruby
# Author: Andriano
# Free API: ipwho.is
require 'net/http'
require 'json'
require 'uri'

# Warna untuk CLI
module Color
  RESET = "\033[0m"
  RED = "\033[31m"
  GREEN = "\033[32m"
  YELLOW = "\033[33m"
  BLUE = "\033[34m"
  CYAN = "\033[36m"
  WHITE = "\033[37m"
end

def banner

puts"#{Color::CYAN}██╗██████╗        ██████╗ ███████╗ ██████╗ ██╗      ██████╗  ██████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
██║██╔══██╗      ██╔════╝ ██╔════╝██╔═══██╗██║     ██╔═══██╗██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
██║██████╔╝█████╗██║  ███╗█████╗  ██║   ██║██║     ██║   ██║██║     ███████║   ██║   ██║██║   ██║██╔██╗ ██║
██║██╔═══╝ ╚════╝██║   ██║██╔══╝  ██║   ██║██║     ██║   ██║██║     ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
██║██║           ╚██████╔╝███████╗╚██████╔╝███████╗╚██████╔╝╚██████╗██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
╚═╝╚═╝            ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝


                                                                                                           #{Color::RESET}"
puts"#{Color::RED}                         Author: Andriano#{Color::RESET}"
end
banner
print "#{Color::CYAN}Masukan Alamat Ip : #{Color::WHITE}"
ip = gets.chomp

url = URI("http://ip-api.com/json/#{ip}")

response = Net::HTTP.get(url)
data = JSON.parse(response)

if data["status"] == "success"

  puts "#{Color::GREEN}IP :           #{Color::WHITE}#{data["query"]}"
  puts "#{Color::GREEN}Negara :       #{Color::WHITE}#{data["country"]}"
  puts "#{Color::GREEN}Provinsi :     #{Color::WHITE}#{data["region"]}"
  puts "#{Color::GREEN}ID  :          #{Color::WHITE}#{data["countryCode"]}"
  puts "#{Color::GREEN}Kota :         #{Color::WHITE}#{data["city"]}"
  puts "#{Color::GREEN}Zona/Wilayah : #{Color::WHITE}#{data["timezone"]}"
  puts "#{Color::GREEN}ISP :          #{Color::WHITE}#{data["isp"]}"
  puts "#{Color::GREEN}lat :          #{Color::WHITE}#{data["lat"]}"
  puts "#{Color::GREEN}lon :          #{Color::WHITE}#{data["lon"]}"
  puts "#{Color::GREEN}as  :          #{Color::WHITE}#{data["as"]}"

else
  puts "#{Color::RED}IP TIDAK DITEMUKAN#{Color::RESET}"
end
