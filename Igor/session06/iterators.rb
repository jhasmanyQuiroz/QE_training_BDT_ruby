=begin 
Create a class that is going to receive :
The amount of persons to register
One method to get the Name and ID for all the persons registered
One method that consider:
 for each one of the Names, change them to upper case
 print the position and the Name of each person registered 
 Save the name in upper case into an array, return the array
One method that According the amount of persons registered say “good bye <name>” to each one until all persons are gone.

=end
class Register
 def amount_to_register 
  @my_hash = {}
  puts "number of persons to register:" 
  @size = gets.chomp.to_i
  (1..@size).each do |n|
    puts "Please insert the #{n}th ID:" 
    key = gets.chomp
    puts "Please insert the #{n}th Name:" 
    value = gets.chomp
    @my_hash.store(key, value)
  end
 end

 def get_names_id
  puts "register persons with IDs:"
  p @my_hash
 end 

 def upper_names
    names = @my_hash.values
    names.each_with_index do |name,index|
     name_up = name.upcase
     puts "#{index + 1}th person is: #{name_up}"
     names[index] = name_up
    end
    return names
 end 

 def good_bye names
  persons = @size
  while persons > 0 do
    puts "good bye #{names.pop}"
    persons -=1
  end
 end

end

my_event = Register.new
my_event.amount_to_register
my_event.get_names_id
array = my_event.upper_names
my_event.good_bye(array)