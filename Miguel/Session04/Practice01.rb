=begin
Create one class named Person
1. This class should have one setter to the name.
2. One getter to the greet for the person e.g. Hi <name>
3. One setter and getter to a special message e.g. <name> Have a nice day.

You can directly print the message in the instance variable or out of the class
=end

class Person
  attr_writer :name
  attr_reader :message
  attr_accessor :specialMessage

  def initialize(name)
    @name = name
    @message = "Hi #{@name}"
    @specialMessage = ""
  end

  def specialMessage=(message)
    @specialMessage = @name + ' ' + message
  end
end

person = Person.new('Miguel')
puts "#{person.message}" # Hi <name>
person.specialMessage = "Have a nice day."
puts "#{person.specialMessage}" # <name> Have a nice day.
