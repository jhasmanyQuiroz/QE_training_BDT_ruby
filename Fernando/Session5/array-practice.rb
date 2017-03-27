def arraymethod
  return [2,3,4,10]	
end


def firstElement(arrayElements)
   puts("The first element of " +
   	+"#{arrayElements.inspect} is: #{arrayElements.first}")
end


def lastElement(arrayElements)
   puts("The last element of " +
   	"#{arrayElements.inspect} is: #{arrayElements.last}")
end


def commonElements(arrayEl1, arrayEl2)
   puts("The common element between " +
   	"the two arrays is: #{arrayEl1 & arrayEl2}")
end

p(arraymethod)

firstElement([2,3,4])

lastElement([2,3,78,9,0])

commonElements([2,3,78,9,0], [2,3,8,4])
