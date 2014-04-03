ten_things = "apples oranges Crows telephone light sugar"

puts "wait there's not 10 things in that list, let's fix that."

stuff = ten_things.split(' ')#切斷每個字元間的空格並移除空格
#puts stuff
more_stuff = %w(day night song frisbee corn banana girl boy) #不太懂意思%W = write?

while stuff.length != 10
	next_one = more_stuff.pop() #顯示more_stuff 最後一個字元並移除
	puts "adding: #{next_one}"
	stuff.push(next_one)#加入more_stuff 最後一個被移除的字
	puts "there's #{stuff.length} items now." #顯示目前字元長
end

puts "there we go #{stuff}"#目前陣列中所含字元

puts "let's do some things with stuff."

puts stuff[1]#陣列中的第二個 第一個為0
puts stuff[-1]#陣列中的最後一個 -2為倒數第二個
puts stuff.pop()#移除最後一個字元
puts stuff
puts stuff.join(' ')#陣列字元中加入空格 並使成為一列不斷行
puts stuff.values_at(3,5).join('#')

