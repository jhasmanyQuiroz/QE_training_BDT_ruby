def operations
  result=0
  yield
  puts "The value obtained is #{result}"
end

operations {result=1+1}

operations do
  puts "Show Result"
  result=2+2
end
