#!/usr/bin/env ruby

e = "\033[1;31m[-] \033[0m"
p = "\033[1;77m[>] \033[0m"
g = "\033[1;34m[*] \033[0m"
s = "\033[1;32m[+] \033[0m"
h = "\033[1;77m[@] \033[0m"

print "#{p}Local Host: "
host = gets.chomp
print "#{p}Local Port: "
port = gets.chomp

####################
## Stage Listener ##
####################

puts "#{g}Running NetCat..."
loop do
print "# "
system("nc -l #{host} #{port}")
end
