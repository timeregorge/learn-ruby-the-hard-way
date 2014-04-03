def prmopt 
	print "->"
end

def right()
	puts "there are three boxes on the desk in front of you"
	puts "one of it has a key inside."
	puts "you have only one time alternative."
	puts "1.Gold box. \n2.silver box. \n3.copper box."

	
end

def left()

end


def start()
	puts "you're stand at a forked road"
	puts "which side you what to choose?"
	puts "1.right. \n2.left"
	prmopt; way = gets.chomp

	if way == "1"
		right()
	elsif way == "2"
		left()
	else
		 puts "please choose a side or you just keep standing here."
		 Process.exit() 
	end

end

start()