arr =[11, 22, 33, 44, 55]
def search_array(arr, num)
	return_index = nil
	index = 0
		arr.each do |x|
			if arr[index] == num
				return_index = index
			end
			index += 1
		end	
	return_index
end
p search_array(arr,22) #returns 1

def fib(num)
  fib_array = [0,1]
  until fib_array.length == num
  x = (fib_array[-2] + fib_array[-1])
  fib_array.push(x)
  end
  fib_array
end

# take an array of numbers bubblemethod(array)
# compare the numbers at index 0 and 1
	#if in order from low to high stay same
	#if in order from high to low , switch
	#-loop again until all numbers are from low to high
# compare the first number (or index 0 ) with the next number (the next index)
# and put the lesser number first 
# 	in other words swap the numbers if the first number is higher
# 	then make a new array with the compared numbers 
# 	until no numbers in the array are swapped continue

# while the numbers compared need to be swapped, run the command
# 	break if the numbers don't need to be swapped , then the sort is done
# 	def bubble_method(array)
# 	
def bubblesort(arr)
  n = arr.length - 1 
  index = 0
  swapped = true 
  
  until index > n
    n.times do |index| if arr[index] > arr[index + 1]
    
                       num1 = arr[index]
                       num2 = arr[index + 1]
                       arr[index] = num2
                       arr[index + 1] = num1
                       swapped = true
                      end
            end
         index += 1 
  end
  arr 
end
  
#try to write with an until loop 
# an loop do 
#
arr = [19, 2, 100, 44, 13]
p bubblesort(arr)