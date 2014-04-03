def prompt
	print ">"
end

def gold_room()
	puts "this room is full of gold. how much do you take?"

	prompt;next_move = gets.chomp
	if next_move =~ /^\d+(.\d+)?$/ #有BUG 除非輸入數字包含"1"或"0"才會顯示nice...或you greedy...否則無論輸入什麼都會顯示man, learn....

		how_much = next_move.to_i()
		if how_much < 50
			gd ("nice you're not greedy, you win!")
			Process.exit(0)
		else
			dead("you greedy bastard!")
		end

	else
		dead("man, learn to type a number")
	end
end


def bear_room() #熊房間
	puts "there is a bear here."
	puts "the bear has a bunch of honey."
	puts "the fat bear is in fornt of another door."
	puts "how are you going to move the bear?"
	bear_moved = false 

	while true #條件成立TRUE 結束
		prompt; next_move = gets.chomp

		if next_move == "take honey away"
			dead("the bear looks at you then slaps your face off")
		elsif next_move == "taunt bear" and not bear_moved #and not (bear_moved = false) = not false = true
 			puts "the bear has moved from the door. you can go trough it now"
			bear_moved = true  #conditions are established.
		elsif next_move == "taunt bear" and bear_moved #再次朝熊嘲弄 and (bear_moved = false) 否定條件成立
			dead("the bear gets pissed off and chews your led off.") #死亡
		elsif next_move == "open door" and bear_moved #條件成立(true)才可進入 否則為輸出else條件式
			gold_room
		else
			puts "i got no idea what that means."
		end
	end
end

def cthulu_room() #惡魔房間
	puts "here you see the great evil cthulu"
	puts "he, it, whatever stares at you and you go insane."
	puts "do you flee for your life or eat you head?"

	prompt; next_move = gets.chomp

	if next_move.include? "flee" 
		start()  #逃跑後回到 遊戲開始選擇房間
	elsif next_move.include? "head" #吃掉頭 遊戲結束
		dead("well that was tasty!")
	else
		cthulu_room() # 不輸入或沒回應正確選項 重複問句
	end
end

def gd (reason)
	puts "#{reason} you're perfect!"
	Process.exit(0)
end

def dead(why) #各層DEF輸出dead 並把死因放入why內 + good job! process.exit = 程序結束
	puts "#{why} good job!"
	Process.exit(0)
end

def start()
	puts "your are in a dark room."
	puts "there is a door to your right and left"
	puts "which one do you take?"

	prompt; next_move = gets.chomp

	if next_move == "left" #選擇到熊房間
		bear_room()
	elsif next_move == "right" #選擇到惡魔房間
		cthulu_room()
	else
		dead("you stumble around the room unitle you starve.")
	end
end

start() #game start