require 'webrick'

server = WEBrick::GenericServer.new(
  :Port => 1234,
	:CGIPathEnv   => ENV["PATH"]   # PATH environment variable for CGI.
	)

trap("INT"){ server.shutdown }

server.start do |socket|
  socket.puts Time.now
	socket.puts ENV["PATH"] 
end
