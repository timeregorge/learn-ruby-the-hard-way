def put_two(*args) #arg是什麼意思?
	arg1,arg2 = args
	puts "arg1:#{arg1}, arg2:#{arg2}"
end

def puts_two_again(arg1,arg2)
	puts "arg1:#{arg1}, arg2:#{arg2}"
end

def puts_one(arg1)
	puts "arg1: #{arg1}"
end

def puts_none()
	puts "i got nothing."
end

puts_two_again("zed","shaw")
put_two("zed","shaw")
puts_one("first!")
puts_none()