#psuedocode

#Release 0
array = [11,22,33,44,55,]
def search_array (array, integer)
	return_index = nil
	index_place = 0
		array.each do |num|
			if array[index_place] == integer
				return_index = index_place
			else
				index_place += 1
			end
		end
	return_index
	end
p search_array(array,30)



fib_array = [0,1]


#puts "what's your fib number"
#num = gets.chomp
def fib(num)
  fib_array = [0,1]
  until fib_array.length == num
  number = (fib_array[-2] + fib_array[-1])
  fib_array.push(number)
  end
  p fib_array
end

fib(100)

#didn't get to the last part with my pair. 


