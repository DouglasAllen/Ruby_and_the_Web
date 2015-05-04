require_relative 'from_abstract_webrick_code'


class Configurable < Simple

	def initialize server, color, size
		super server
		@color = color
		@size = size
	end
    
	def do_stuff_with request
		content = "<p " +
						%q{style="color: #{@color}; font-size: #{@size}"} +
                    ">Hello, World!"
    
		return 200, "text/html", content
	end
	
end

server = WEBrick::HTTPServer.new(:Port => 1234)
server.mount '/configurable', Configurable, 'red', '2em'
trap('INT'){ server.shutdown }
server.start
