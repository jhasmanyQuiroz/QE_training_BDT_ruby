=begin 
Create 1 Class considering :
Method that will create a hash with a list of userID and userName,the userID should be only numbers between 1 to 100.
 Username should be only lowercase (nor more than 8 digits)
Method that is going to request to the user for a number (only 1 number) and need to return the amount of users that have
 their user ID starting with the number inserted (E.g. if user inserted 1, then could count all users with 1, 10,11,12,13..19 or 100),
 return and array with the user_ID that fulfilled this condition
Method that is going to request to the user for a character (only 1 char) and need to return the amount of users that have their  userName
 starting with the character inserted (E.g. if user inserted a, then could count all users that start with a),
 return and array with the list of userName that fulfilled this condition
Method to display a message considering :
 UseID between 1-25 “User belong Group 1”
 UseID between 26-50 “User belong Group 2”
 UseID between 51-75 “User belong Group 3”
 UseID between 76-100 “User belong Group 4”
 Consider to use Case Equality 
Method to print the array received
Please consider to use a control statement to get only the expected information, if something invalid data is inserted need to request it again
=end

class UserHash
 def create_user_hash 
  @my_hash = {}
  begin
   puts "number of users on hash(should be a number):" 
   size = gets.chomp.to_i
  end while size < 1 
  (1..size).each do |n|
    puts "Please insert the #{n}th userID:" 
    key = self.validate_user_id
    puts "Please insert the #{n}th userName:" 
    value = self.validate_user_name
    @my_hash.store(key, value)
  end
 end

  def validate_user_name 
   begin
    puts "Please insert a valid user Name, Only lowercase (between 3 and 8 characters):"
    name = gets.chomp
    valid = /^[a-z]{3,8}$/.match(name)
   end while !valid
  return name
  end
 
  def validate_user_id 
   begin
    puts "the userID should be only numbers between 1 to 100:"
    user_id = gets.chomp
    valid = /^[1-9][0-9]?[0]?$/.match(user_id)
   end while !valid
  return user_id
  end
 
 def number_on_user_id
   begin
    puts "insert a number to look on the user IDs:"
    number = gets.chomp
    valid = /^[1-9]$/.match(number)
   end while !valid
   user_id_match = []
   @my_hash.keys.each do |user_id|
     if /^[#{number}]/.match(user_id)
       user_id_match.push(user_id)
     end
   end
   puts "The number of userIds that match the condition is: #{user_id_match.length}"
   return user_id_match
 end 

 def char_on_user_name
   begin
    puts "insert a character to look on the user names:"
    char = gets.chomp
    valid = /^[a-z]$/.match(char)
   end while !valid
   user_name_match = []
   @my_hash.values.each do |user_name|
     if /^[#{char}]/.match(user_name)
       user_name_match.push(user_name)
     end
   end
   puts "The number of User Names that match the condition is: #{user_name_match.length}"
   return user_name_match
 end 
 
 def print_groups
  @my_hash.each do |user_id, user_name|
   puts "User: #{user_name} with ID: #{user_id}"
   user_id = user_id.to_i
   case user_id 
   when 1..25
     puts "User belong Group 1 "
   when 26..50
     puts "User belong Group 2"
   when 51..75
     puts "User belong Group 3"
   when 76..100
     puts "User belong Group 4"     
   end
  end
 end 

 def print_array array
  p array
 end

end 
 
puts "Need to Insert valid values, if not you will pront again"
sample = UserHash.new
sample.create_user_hash
sample.print_array(sample.number_on_user_id)
sample.print_array(sample.char_on_user_name)
sample.print_groups