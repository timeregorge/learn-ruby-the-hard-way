filename = ARGV.first #獲取檔名
script = $0 #什麼意思?

puts "we're gong to erase #{filename}" #重覆檔名
puts "if you don't want that , hit CTRL-C(^C)"
puts "if you do want that hit RETURN"

print "?"
STDIN.gets #同意或不同意

puts "opening the file..."
target = File.open(filename, 'w') # 'W' 寫入模式 'R'讀取模式

puts "Truncating the file. Goodbye!"
target.truncate(target.size) #truncate 清空檔案 , size 不知道是什麼，truncate 這行必要嗎?

puts "now i'm going to ask you for three lines"

print "line1:"; line1 = STDIN.gets.chomp() #輸入字串第一行
print "line2:"; line2 = STDIN.gets.chomp() #輸入字串第二航
print "line3:"; line3 = STDIN.gets.chomp() #輸入字串第三行

puts "I'm goign to write these to the file "

target.write(line1) #第一行寫入檔案
target.write("\n") #空一行
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "and finally, we close it."
target.close() #關閉並儲存檔案