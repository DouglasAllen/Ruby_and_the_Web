#~ require "amrita/template"
require "amrita2"
include Amrita2

tmpl = Template.new("template.html")
data = {
   :title => "hello world",
   :body => "Amrita is a html template libraly for Ruby"
}
tmpl.compile(STDOUT, data)

