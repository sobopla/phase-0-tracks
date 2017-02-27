#psuedocode
fib_array = [0,1]
#take Fibonacci terms and generate an array
#check it with fib(100)
#define fib with 100, 
#undo the fib sequence
#fib_sequence does the last number in the fib sequence = 218922995834555169026
#if it does, it will end with 218922995834555169026
#fib .last needs to equal 218922995834555169026
#if it is not true then it is not correct
#how does the program know when to end. 
#how do we get the array of the numbers that lead up to the 
#fibonacci number we're entering

# fib is the array
# while fib.count < fib_number(100)
# then go through the algorithm
# if fib.count == fib_number
# puts / p array



#fib_array = [1, 2, 5, 218922995834555169026]
# puts "did we do this right?"
# fib_array.last == 218922995834555169026 

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



