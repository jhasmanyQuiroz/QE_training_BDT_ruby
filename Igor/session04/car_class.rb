=begin 
Create a class called MyCar
1 When you initialize a new instance or object of the class,
allow the user to define some instance variables that tell us the year, color, and model of the car. 
2 Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. 
3. Create instance methods that allow the car to speed up, brake, and shut the car off,
this methods should print each action.
=end


class MyCar
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
car_b = MyCar.new 2017, "black", "BB"
car_a.start_car
car_a.speed_up 50
car_b.speed_up 100
car_a.speed_up 70
car_b.start_car
car_b.speed_up 80
car_a.brake 100
car_b.brake 100
car_a.shut_off
