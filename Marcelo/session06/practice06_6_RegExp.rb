=begin
Ruby Regular Expressions
=end

def ask_username
	puts "Please enter a valid username:"
	username = gets.to_s
	case username
	when /^[a-z0-9_-]+$/; print "OK"
	else; 
		ask_username
	end
end

def ask_password
	puts "Please enter a valid password:"
	password = gets.to_s
	case password
	when /^[a-z0-9_]{8,16}$/; print "OK"
	else; 
		ask_password
	end
end


def ask_email
	puts "Please enter a valid email:"
	email = gets.to_s
	case email
	when /.+@.+\..+/i; print "OK"
	else; 
		ask_email
	end
end

# ask_username
# ask_password
ask_email