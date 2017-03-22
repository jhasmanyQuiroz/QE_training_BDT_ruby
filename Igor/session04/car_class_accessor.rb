=begin 
Create a new script using the same class created before but now :
 Add an accessor method to your MyCar class to change and view the color of your car.
 Then add an accessor method that allows you to view, but not modify, the year of your car.

=end


class MyCar
  attr_reader :year
  attr_accessor :color

  def initialize year, color, model
      @year = year
      @color = color
      @model = model
      @current_speed = 0
      @car_started = false
  end
  
  def start_car
      @car_started = true
  end
  
  def speed_up speed_to_increase
      if @car_started
        @current_speed += speed_to_increase 
        puts "You accelerate #{speed_to_increase} Kmh."
        puts "Now your current speed is  #{@current_speed} Kmh."
      else
        puts "You need to start the car first "
      end
   end
   
  def brake speed_to_low
      if @car_started
	@current_speed = @current_speed >= speed_to_low ? @current_speed - speed_to_low : 0
        puts "You reduce  #{speed_to_low} Kmh."
        puts "Now your current speed is  #{@current_speed} Kmh."
      else
        puts "You need to start the car first "
      end
   end 

  def shut_off
      if @car_started
        @current_speed = 0
        @car_started = false
	puts "You turn off the car"
        puts "Now your current speed is  #{@current_speed} Kmh."
      else
        puts "The car is already turned off"
      end
   end     
   
end

car_a = MyCar.new 2000, "red", "AA"
puts "the year of the car is:" + car_a.year.to_s
puts "the color of the car is :" + car_a.color
car_a.color = "black"
puts "the new color of the car is :" + car_a.color

