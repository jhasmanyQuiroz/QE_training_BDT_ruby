=begin
Using instanced class and also applying singleton :
1. Add a class that initialized the values of :
User : Guest
Message : Welcome to the city
Visitors : 0
2. Inside the class add a method to :
   1. Add a user
   2. Add a welcome message
   3. Increment visitors amount
   4. Save all the users, and messages in a hash
Using attr_accesor print the last user defined

Explain which differences you see between both definitions
=end
require 'singleton'
class StoreUser
  include Singleton
  attr_accessor :user
  attr_reader :storeUsers

  def initialize
    @user = 'Guest'
    @message = 'Welcome to the city'
    @visitor = 0
    @storeUsers = {}
  end
  def addUser user
    @user = user
  end
  def addMessage message
    @message = message
  end
  def incrementVisitor
    @storeUsers[@user] = @message;
    @visitor += 1
  end
end

# Guest
puts StoreUser.instance.user
StoreUser.instance.incrementVisitor
# new user Miguel
StoreUser.instance.addUser 'Miguel'
StoreUser.instance.addMessage 'hello'
StoreUser.instance.incrementVisitor
# new user Angel
StoreUser.instance.addUser 'Angel'
StoreUser.instance.addMessage 'hi'
StoreUser.instance.incrementVisitor
# new user Andres
StoreUser.instance.addUser 'Andres'
StoreUser.instance.addMessage 'Good morning'
StoreUser.instance.incrementVisitor
# last user added
puts StoreUser.instance.user
# store users
puts StoreUser.instance.storeUsers
