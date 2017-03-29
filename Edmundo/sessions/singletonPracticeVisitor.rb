def single
  @single ||= Visitor.new 
end


class Visitor
  attr_accessor :user, :visitor

  def initialize
    @user = "Guest"
    @message = "Welcome to City"
    @visitor = 0
    @user_message = { @user => @message }
    p @user_message
  end

  def add_user
    puts "Add a user"
    @user = gets.chomp
  end

  def add_message
    puts "Add a message"
    @message = gets.chomp
  end

  def run 
    add_user
    add_message
    @user_message[@user] = @message
    @visitor += 1
    p @user_message
  end

end

single.run
single.run


p single.user
p single.visitor



