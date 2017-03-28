def convert_sec_to_min_hrs seconds
	min = seconds / 60
	hrs = seconds / 3600
	return min, hrs
end

puts "Get seconds to convert: "
seconds = gets.chomp.to_f
min, hrs  = convert_sec_to_min_hrs seconds
puts "#{min} min"
puts "#{hrs} hrs"