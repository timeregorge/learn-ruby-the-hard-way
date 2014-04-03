user = ARGV.first
prompt ='->'
late = "@@\n"
puts "hi #{user},I'm the #{$0} script."
puts "i'd like to ask you a few questions."
puts "do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()
print late
puts "where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()
print late
puts "what kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()
print late
puts <<SOMETHING
alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice
SOMETHING

