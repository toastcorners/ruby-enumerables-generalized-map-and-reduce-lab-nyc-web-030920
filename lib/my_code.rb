#Map - returns new array after being manipulated by source array input
def map(array)
newArr = []
i = 0
while i < array.length
    newArr.push(yield(array[i]))
    i += 1
  end#=> while loop
  return newArr
end  
  

#Reduce - expects array and an optional parameter of a starting value(integer)
# reduce returns a accumulated value 

def reduce(array, starting_value = nil)
i = 0
accum = 0
arr = []
if starting_value
  accum += starting_value
else 
  accum = array[0]
  i = 1
while i < array.length  
 accum = yield(accum, array[i])
 i += 1
  end
  return accum
end
end
