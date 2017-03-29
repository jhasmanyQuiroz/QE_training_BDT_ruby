require_relative "Exercise01"
require 'singleton'
class Register
  include Singleton
  attr_accessor :register
  def initialize
    @userName=nil
    @id=nil
    @register={}
  end
  def log message
    file = File.open('execution.log', 'a')
    file.write("\n#{message}")
    file.close
  end
  def askUserInfo
    log "method - askUserInfo"
    print "Enter User Name: "
    @id=gets.chomp
    print "Enter ID: "
    @userName=gets.chomp
    @register[@id] = [@userName,""]
    log "User Added: #{@userName}, Id: #{@id}"
  end
  def insertUsers
    log "method - insertUsers"
    quantity = nil;
    loop do
      print "Enter quantity of users: "
      quantity = gets.chomp.to_i
      log "quantity: #{quantity}"
      break if quantity <16 && quantity > 2;
    end
    quantity.times do |q|
      puts "User #{q}:"
      askUserInfo
    end
  end
  def chooseConvertion
    log "method - chooseConvertion"
    puts "Choose a Converion"
    puts 'a) From Milimeters to Centimeters'
    puts 'b) From Centimeters to Meters'
    puts 'c) From Meters to Kilometers'
    print "option: "
    option = gets.chomp
    log "Option: #{option}"
    return option
  end
  def performConvertion option
    log "method - performConvertion"
    log "option: #{option}"
    case option
    when "a"
      print 'Insert the value in mm.: '
      mm = gets.chomp
      log "Insert the value in mm.: #{mm}"
      puts "#{mm} mm. represents #{Converions.fromMm2Cm mm} cm."
      log "#{mm} mm. represents #{Converions.fromMm2Cm mm} cm."
    when "b"
      print 'Insert the value in cm.: '
      cm = gets.chomp
      log "Insert the value in cm.: #{cm}"
      puts "#{cm} cm. represents #{Converions.fromCm2M cm} m."
      log "#{cm} cm. represents #{Converions.fromCm2M cm} m."
    when "c"
      print 'Insert the value in m.: '
      m = gets.chomp
      log "Insert the value in m.: #{m}"
      puts "#{m} m. represents #{Converions.fromM2km m} km."
      log "#{m} m. represents #{Converions.fromM2km m} km."
    else
      puts "#{option} doesn't exist"
      log "#{option} doesn't exist"
    end
  end
  def askUserCalculation
    log "method - askUserCalculation"
    @register.each do |key, value|
      print "Does user: #{value[0]} want to perform a convertions? "
      answer = gets.chomp
      log "Ask User: #{key}"
      log "Answer: #{answer}"
      if answer=="yes"
        option=chooseConvertion
        performConvertion option
        @register[key][1] = "Yes"
      else
        @register[key][1] = "No"
      end
    end
  end
end

# Enter Users
Register.instance.insertUsers
# Perform calculations by user
Register.instance.askUserCalculation
# Print users
puts "User Name,Id,Convertion?"
Register.instance.register.each{|k,v| puts "#{k},#{v[0]},#{v[1]}"}
