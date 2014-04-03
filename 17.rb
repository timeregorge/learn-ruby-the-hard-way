from_file, to_file = ARGV
script = $0

puts "copying from #{from_file} to #{to_file}"

input = File.open(from_file).read
#indata = input.read()

puts "the input file is #{input.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}" #file.exists 將檔名當作一個參數傳入若檔案存在回傳true 不存在false

puts "ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets #取得回覆

output = File.open(to_file, "w") #開啟 被複製檔案 W寫入模式
output.write(input) # 寫入檔案內容至被複製檔案

puts "Alright, all done."

output.close() #關閉輸出檔案 but , why this line?
#input.close()
