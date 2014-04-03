def add(a,b)
	puts  "adding #{a} + #{b}"
	a + b #回傳A+B的數值
end

def subtract(a,b)
	puts "subtract #{a} - #{b}"
	a - b#回傳A-B的數值
end

def mutiply(a,b)
	puts "mutiply #{a} * #{b}"
	a * b#回傳A*B的數值
end

def divide(a,b)
	puts "divide #{a} / #{b}"
	a / b#回傳A除B的數值
end

puts "let's do some math with just function!"

age = add(20,4) #給ADD參數
height = subtract(200,26) #給subtract 參數
weight = mutiply(31,2) #給mutiply 參數
iq = divide(230,2) #給divideh0 參數

puts "age: #{age}, height #{height}, weight: #{weight}, IQ: #{iq}"

puts "here is a puzzle" #謎語

what = add(age, subtract(height,mutiply(weight, divide(iq,2)))) 
#iq=230 /2(先執行) = 115 /2 , 115 / 2 = 57 , mutiply = (weight)62 * 57(divide(iq,2)),
#62*57=3534 , height = 174 - 3534(subtract(174,3534)), age = 24(add(20,4))=24 + subtract(3534),
#最後結果得到3336
#回算運算式

puts "that becomes: #{what} can you di it by hand?"