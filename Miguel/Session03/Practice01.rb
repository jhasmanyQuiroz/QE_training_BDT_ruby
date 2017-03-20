=begin
1. Create a script that ask for some value.
2. Print the values inserted by user
		e.g.
        What is your name?
		Hi <name>!! How are you today?
3. How does it look like?
=end

puts "What is your name?"
name = gets
puts "Hi #{name}!! How are you today?"

puts "What is your name?"
name = gets.chomp
puts "Hi #{name}!! How are you today?"
