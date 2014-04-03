def prompt
	print "->"
end 

puts "you enter a dark room with two doors. Do you go through door #1 or door #2?"

prompt; door = gets.chomp

if door == "1"
	puts "there's a giant bear here eating a cheese cake. What do you do?"
	puts "1. Take the cake."
	puts "2. Scream at the bear."
	prompt; bear = gets.chomp

	if bear == "1"
		puts "the bear eats your face off. good job!"
	elsif bear == "2"
		puts "the bear eats your legs off. good job!"
	else
		puts "well, doing #{bear} is probably better. bear runs away"
	end

elsif door == "2"
	puts "you stare into the endless abyss at Cthuhlu's retina."
	puts "1.Blueberries."
	puts "2.Yellow jacket clothespins."
	puts "3.understanding revolvers yelling melodies."

	prompt; instanity = gets.chomp
	if instanity == "1" || instanity == "2"
		puts "your body survuves powered by a mind of jello. good job!"
	else
		puts "the instanity rots your eyes into a pool of muck. good job!"
	end
else
	puts "you stumble around and fall on a knife and die. good job"
end


			
