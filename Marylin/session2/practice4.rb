fn = 25
sn = 51
tn = 64
zero = 0

#addition = fn + sn + tn

#result = "the average of #{fn} + #{sn} + #{tn} is: #{addition/3}"
#result = "the average of #{fn} + #{sn} + #{tn} is: #{(fn + sn + tn)/3}"
result = "the average of #{fn} + #{sn} + #{tn} is: #{fn + sn + tn/3}" #wrong, needs the ()
puts result

logic = "#{fn} and #{zero} are equals? #{fn==zero}"
puts logic

puts "#{fn} <=> #{sn} ? #{fn<=>sn}"