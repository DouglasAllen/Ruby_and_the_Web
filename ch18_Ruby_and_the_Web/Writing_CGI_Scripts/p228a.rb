# Sample code from Programing Ruby, page 228

require 'amrita2/template'
include Amrita2

HTML = %{<p id="greeting" />
<p>The reasons you gave were:</p>
<ul>
    <li id="reasons"><span id="reason_name"></span>,
                     <span id="rank"></span>
</ul>
}

data = {
  :greeting => 'Hello, Dave Thomas',
  :reasons  => [
    { :reason_name => 'flexible',    :rank => '87' },
    { :reason_name => 'transparent', :rank => '76' },
    { :reason_name => 'fun',         :rank => '94' },
  ]
}

t = Template.new(HTML)
t.prettyprint = true
t.expand(STDOUT, data)
