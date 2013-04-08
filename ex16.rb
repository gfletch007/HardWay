filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "?"
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I am going to ask you for 3 lines"
print "line 1: "; line1= STDIN.gets.chomp()
print "line 2: "; line2= STDIN.gets.chomp()
print "line 3: "; line3= STDIN.gets.chomp()

target.write ("%s\n%s\n%s\n" % [line1, line2, line3])

puts "Closing file..."
puts "...Done."
target.close()