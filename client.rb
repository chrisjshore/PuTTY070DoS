require 'socket'

hostname = 'localhost'
port = 2323
sock = TCPSocket.open(hostname, port)

while line = sock.gets
   #puts line.bytes
   puts line.chop
end

sock.close
