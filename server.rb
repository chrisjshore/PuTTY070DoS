require "socket"

sock = TCPServer.open(2323)

loop do
  conn = sock.accept
  conn.puts "Sending large combining character sequence..."
  conn.print "O" + "\u0308"*1024*1024
  conn.print "\n"
  sleep 15   # sleep for 15 seconds to check responsiveness
  conn.close
end
