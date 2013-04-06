user = ARGV.first
prompt = '> '

puts "Hi #{user}, I'm the #{0} script!."
puts "I'd like to ask you a few questions."
puts "Do you like me, #{user}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print pompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alright #{user}, so you said you #{likes} about liking me.
You live in #{lives}, but I live on planet Internet, so I don't know where that is.
and you have a #{computer} computer. Nice.
MESSAGE