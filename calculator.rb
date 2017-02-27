# a = 5
# b ="word"
# c = 2 
# def add(a,b,c)
#   puts a + b.to_i + c
# end

#question 3
# prompt user for calculation
loop do
  holder = []
  puts "enter no 1 or done"
a = gets.chomp
	if a == "done"
  		break
	else
		puts "enter no 2"
		b = gets.chomp.to_i
		ans = a.to_i + b
	puts ans
holder << a
holder << b
p holder
puts "#{holder[0]} + #{holder[1]} = #{ans}"
#somehow store next answers in a new array and print history...?
end
end
#question 5 psuedocode
#shovel a into a new array each time
#shovel b into the same new array
# to print out the array with it's integer for the calculation performed
#the index of a, and the index of b added equals

#question 6 psuedocode
#if an integer is not entered , put wrong input , enter a number

