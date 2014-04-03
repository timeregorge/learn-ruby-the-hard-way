def cheese_and_crackers(cheese,cracker) #定義(變數,變數)
	#cheese = gets.chomp()
	#cracker = gets.chomp()

	puts "your have #{cheese} cheeses!"
	puts "you have #{cracker} boxes of crackers!"
	puts "man that's enough for a party!"
	puts "get a blanket."
	puts 
end

puts "we can just give th function numbers directly:"
cheese_and_crackers(20,30) # 指定變數

puts "or we can user variables from our script"
amount_of_cheese = 10 #設定變數
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese,amount_of_crackers)

puts "we can even do math inside too:"
cheese_and_crackers(10 + 25 , 5 + 15) #數值相加

puts "and we can combine the two, variable and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 50) #變數與數值相加