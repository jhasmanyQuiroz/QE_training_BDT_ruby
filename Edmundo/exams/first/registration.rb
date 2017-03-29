class Registration
  def initialize
    @username = nil
    @id = nil
    @users = []
  end

  def set_user

    print "Please insert username: "
    username = gets.chomp
    print "Please insert password: "
    password = gets.chomp

    if username =~ /^[a-z0-9]{1,11}$/ 
          @username = username 
          @password = password
          @users.puts
          return true
    else
      puts "username invalid, please try again."    
          return false
      
    end
  end

  def amount_user
    print "How many users will be registered? "
    amount = gets.chomp.to_i
      
    amount.times do 
       set_user
    end    
  end
end