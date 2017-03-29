=begin
5. Move the modules to another file and include them adding the line :
	     require_relative "folder/ruby_file"
=end
require_relative "Greets"
require_relative "GoodByes"

class GreetingsAndGoodbyes
  include Greets
  include GoodByes
end

GreetingsAndGoodbyes.new.hello
GreetingsAndGoodbyes.new.goodMorning
GreetingsAndGoodbyes.new.goodAfternon
GreetingsAndGoodbyes.new.bye
GreetingsAndGoodbyes.new.seeYou
GreetingsAndGoodbyes.new.goodNight
