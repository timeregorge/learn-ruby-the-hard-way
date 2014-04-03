prompt = ">"
puts "type file name" + prompt

name = STDIN.gets.chomp()

read = File.open(name)
puts read.read()