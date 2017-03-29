def multiple_return_sintaxis(arg1)
   calculation_1 = arg1 * 100
   calculation_2=  arg1 / 100
   return calculation_1 , calculation_2
end

# Return Multiple values using assignment
value_added, value_divided = multiple_return_sintaxis(25)
puts "Value Added = #{value_added}, Value divided= #{value_divided }"

# Return Multiple values using an array
array = multiple_return_sintaxis(25)
puts "Value Added = #{array[0]}, Value divided= #{array[1]}"
