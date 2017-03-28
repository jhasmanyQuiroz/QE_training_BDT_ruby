require_relative "modules/greeting.rb"
require_relative "modules/bye.rb"

class Example
   include  Greetings 
   include  Bye

end


ex = Example.new
ex.takeCare
ex.goodAfternoon

