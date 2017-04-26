def music_list
	genre1 = "pop"
	genre2 = "classical"
	puts "there are lots of music genres"
	yield(genre1,genre2)
end

music_list { |genre1, genre2| puts "You can listen to #{genre1} or #{genre2}"}


# declare an array and a hash, with some data. 

#-----------------ARRAY------------------:
array = [1, 2, 3, 4, 5]
new_array = []

#array with .each
array.each do  |num| num.next #.next does not change original array
	new_array << num.next
end
p "---original array---"
p array
p "new_array of next number:"
p new_array

#array with map and no !
#this won't work (I wanted to see what it did):
# array.map do |num| num += 2
# 	new_array << num.map 
# end
 

#array with .map
p "---original array---" #.map! permanently changes original
p array 
array.map! do |num|
	num += 3
end
p "array + 3:"
p array #altered array

#array with a delete 
#?? is this the same as a filter?
p "array is now:"
p array
array.delete_if {|i| i < 2}
puts "array deleting num less than 5:"
p array

#filter method for array
p "array is now:"
p array
p "filter array with select greater than 3:"
array.select{|num| num >= 3}
p array

#---------------HASH-----------------------

cities = {texas: "austin", illinois: "chicago", california: "sacramento"}

#hash with each to update city

cities.each do |state, city|
	puts "#{city.capitalize} is in #{state}"
end
p "cities each capitalized:"
p cities

#method that deletes 
def delete_texas(places)
	places.delete_if {|state, city| state == :texas}
end

delete_texas(cities)
p "cities without texas"
p cities
#or to not change the original:
non_texas = cities.delete_if {|state, city| state == :texas}
p "non_texas one line for variable code test:"
p non_texas
#filter for a hash
#select
non_illinois = cities.select do |state, city|
	state != :illinois
end
p "cities not in Illinois:"
p non_illinois
p "original cities"

#4. method that will iterate over numbers in an array
# if the numbers are even , then its true
# if the numbers are odd , then its false
# 	remove even numbers from an array until you get to an odd number

#until the 
