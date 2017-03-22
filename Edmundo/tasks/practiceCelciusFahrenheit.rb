def cel_to_fah(value)
    ((9 * value ) / 5.0) + 32    
end

def fah_to_cel(value)
    return ((5 * (value -32)) / 9.0)
end

puts cel_to_fah 99
puts(fah_to_cel 60)