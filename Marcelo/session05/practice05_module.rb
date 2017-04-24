=begin
Ruby Module
=end

require_relative "./modules/ruby_files"

class MyClass
include Greet
include Bye
end

sample = MyClass.new
sample.say_hi_friend
sample.say_good_night
sample.say_good_afternoon
sample.say_good_bye
sample.say_see_you_later
sample.say_take_care
