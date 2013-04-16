require 'socket'

host = 'www.google.com'
port = 80

s = TCPSocket.open(host,port)
s.puts "GET /index.html HTTP/1.1\n\n"
while line = s.gets
    puts line.chop
end
s.close
