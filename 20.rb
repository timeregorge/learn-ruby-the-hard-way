input_file = ARGV[0] #檔案名稱

def print_all(f) #定義
	puts f.read() # f.讀取
end

def rewind(f)#rewind 倒帶
	f.seek(0,IO::SEEK_SET) #將文件指針移動至指定位置(0,IO::SEEK_SET) 0代表第幾字
end          #SEEK_SET 一開始就設定IO的位置

def print_a_line(line_count, f) #行數計算
	puts "#{line_count} #{f.readline()}" #(指定行數?), 讀取單行
end

current_file = File.open(input_file) #開啟檔案名稱指定的檔案

puts "First let's print the whole file:"
puts

print_all(current_file) #顯示檔案內容 

puts "now let's rewind, kind of a tape."

rewind(current_file) #倒轉至首行 指定起始位置

puts "let's print three line:"

current_line = 1 #首行前加上編碼 1
print_a_line(current_line, current_file)#不太懂如何指定讀哪一行內容?

current_line += 1

print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line,current_file)

