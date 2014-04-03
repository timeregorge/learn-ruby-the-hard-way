i = 0
numbers = []
while i < 26
	puts "At the top i is #{i}"
	numbers.push(i)

	  i += 1
	puts "number now: #{numbers}"
	puts "at the bottom i is #{i}"
end

puts "the numbers: "

for num in (0..26)
	puts num
end
