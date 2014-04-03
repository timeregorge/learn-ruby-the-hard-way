#hairs = ['brown', 'blond', 'red']
#eyes = ['brown', 'blue', 'green']
#weights = [1, 2, 3, 4]

the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']
#以上為陣列
for number in the_count #把the_count 放進number 各執行一次
	puts "this is count #{number}"
end

fruits.each do |fruit| #把fruits each(個別) do (做) 一次  call (變數稱作) fruit (no sense ,its a name)
	puts "a fruit of type: #{fruit}"
end

for i in change   #把 change 放入I 各執行一次
	puts "i got #{i}"
end


elements = []   #空白陣列

for i in (0..5)   #0..5 = 0 1 2 3 4 5 
	puts "adding #{i} to the list"   #def i as 1 2 3 4 5 0
	elements.push(i)   #push(I) 將I 的數值加入elements 的空白陣列中
end

for i in elements   #將elements 已存的陣列放入I 列出來 (個別執行一次)
	puts "element was: #{i}"
end
