require "webrick"
require_relative "demo-app"

class DemoServlet < WEBrick::HTTPServlet::AbstractServlet
  include DemoApplication
end
