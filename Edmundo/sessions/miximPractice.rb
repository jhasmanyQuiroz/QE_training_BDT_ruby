require_relative 'modules_greets'

class Practice
  include Greets
  include Greets2
end

p = Practice.new
p.hi
p.take_care
p.good_night
