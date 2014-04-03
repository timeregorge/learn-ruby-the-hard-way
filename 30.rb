people = 30 
cars = 40
buses = 15 

if cars > people
	puts "we should take cars."
elsif cars <people
	puts "we should not take the cars."
else
	puts "we can not decide."
end

if buses > cars 
	puts "that's too many buses."
elsif buses < cars 
	puts "maybe we cloud take the buses"
else 
	puts "we still can't dicede."
end

if people > buses
	puts "Alright, let's just take the buses."
else
	puts "fine, let's stay home then"
end
