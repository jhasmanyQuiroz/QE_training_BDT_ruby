class MathPractice
    
    def initialize
        @pi = Math::PI
        puts @pi
        puts "Enter the radio"
        @radio = gets.chomp.to_i
    end

    def circleArea
        puts @radio
        puts "the circle area is #{@radio * 2 * @pi}"
    end

    def circlePermiter
        puts @radio
        puts "the circle perimeter is #{@radio * @radio * @pi}"
    end
end

a = MathPractice.new
puts a.to_s
a.circleArea
a.circlePermiter