=begin 
Add a method that is going to ask for a username :
Need to be write with lowercase letter (a-z), number (0-9), an underscore
Add a method that is going to ask for a password:
Need to be write with lowercase letter (a-z), number (0-9), letter (A-Z) and the length have to be between 8 and 16 characters
Add a method that is going to ask for email
Need to have the format anything@domain.com (could accept also country e.g. anything@domain.com.bo)

=end

def validate_user_name 
  begin
   puts "Please insert a valid user name Name:"
   puts "Need to be write with lowercase letter (a-z), number (0-9), an underscore(_)  between 3 and 10 characters"    
   name = gets.chomp
   #valid = (name === /^[a-z0-9_]{3,10}$/)
   valid = /^[a-z0-9_]{3,10}$/.match(name)
   puts valid
  end while !valid
  return name
end

def validate_password 
  begin
   puts "Please insert a valid Password:"
   puts "Need to be write with lowercase letter (a-z), number (0-9), letter (A-Z) and the length have to be between 8 and 16 characters"    
   password = gets.chomp
   valid = /^[a-z0-9AZ]{8,16}$/.match(password)
  end while !valid
  return password
end

def validate_mail 
  begin
   puts "Please insert a valid Email:"
   puts "anything@domain.com (could accept also country e.g. anything@domain.com.bo)"    
   mail = gets.chomp
   valid = /^[a-z0-9-_]+@[a-z0-9-]+(\.com)((\.[a-z]{2})?)$/.match(mail)
  end while !valid
  return mail
end 
 

puts "Need valid values in order to register a new user"
name = validate_user_name
password = validate_password
mail = validate_mail
puts "the user name is: #{name}, with password: #{password} and mail: #{mail}"