require 'open-uri'

open("http://google.com") do |d|
	d.each_line {|line| p line}
	puts d.base_uri
	puts d.contet_type
	puts d.charset
	puts d.content_encoding
	puts d.last_modified
end
