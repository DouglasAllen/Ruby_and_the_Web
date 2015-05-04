#!/usr/bin/env ruby
require "webrick/cgi"

class HelloCGI < WEBrick::CGI
  def do_GET(req, res)
    res["content-type"] = "text/plain"
    res.body = "Hello, World!\n"
  end
end

HelloCGI.new.start
