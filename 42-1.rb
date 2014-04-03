class TheThing
	attr_reader :number #number 為定義名稱

	def initialize() #初始化數值
		@number = 0
	end

	def some_function() #字串定義
		puts "I got called."
	end

	def add_me_up(more) #累加數值
		@number += more # 和A= A+1一樣
		return @number
	end
end

a= TheThing.new #指定兩個新的CLASS
b= TheThing.new


a.some_function() #輸出字串 I got ...
b.some_function()

puts a.add_me_up(20) #累加數值
puts a.add_me_up(20)
puts b.add_me_up(30)
puts b.add_me_up(30)

puts a.number #印出累加後的數值
puts b.number