class Person
    attr_writer :name
    attr_reader :greet2
    attr_accessor :message

    def initialize
        # @name = name
    end

    def greetings
        @greet2= "Hi #{@name}"
        @message= "#{@message}, Have a nice day"
    end

    # def message(name)
    #     @name = name
    # end

    # def message
    #     @message = message
    # end


    # def message
    #     # @message = message
    #     puts "#{@message}, Have a nice day"
    # end


end

p = Person.new
p.name = "pepito"
p.message = "Juana"
 p.greetings
puts p.greet2
puts p.message
puts p.message