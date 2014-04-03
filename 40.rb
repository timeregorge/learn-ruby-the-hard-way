cities = {'CA' => 'San Francisco', 
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'}

cities['NY'] = 'New York'
cities['OR'] = 'Portland' 

def find_city(map, state)
	if map.include? state #MAP.include? = map是否包含了cities內所定義的字串
		return map[state] #回傳輸入內容MAP[state]
	else
		return "Not found."
	end
end

cities[:find] = method(:find_city) #cities[:find]搜尋= method(:find_city)=>method(呼叫物件)
#呼叫內建函數method ->回傳proc版find_city函式 並將之存在hash裡，key是:find,value是cities‧‧
#
while true #當條件成立
	print "State? (Enter or Quit)"
	state = gets.chomp #取得資訊
	break if state.empty?

	puts cities[:find].call(cities, state)
end
