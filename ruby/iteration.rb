def music_list
	genre1 = "pop"
	genre2 = "classical"
	puts "there are lots of music genres"
	yield(genre1,genre2)
end

music_list { |genre1, genre2| puts "You can listen to #{genre1} or #{genre2}"}


# declare an array and a hash, with some data. 
# .each on an array
# .each on a hash
# .map! on array
# no map! on hash
# Demonstrate that you can iterate through each one using .each, and then using .map!
#  (modifying the data in some way). 
#  Note that you can't call .map! on a hash, so you can skip that  
# Print the data structures before and after each
#  call to demonstrate whether they have been modified or not.

array = [1, 2, 3, 4, 5]
new_array = []

#array with  .each
array.each do  |num| num.next
	new_array << num.next
end
p array
new_array

#array with .map
p array #to show original array before map changes it
array.map! do |num|
	num += 3
end
p array #altered array

#array with a delete 
#?? is this the same as a filter?
array.delete_if {|i| i < 8}
puts "----"
p array


#HASH

cities = {texas: "austin", illinois: "chicago", california: "sacramento"}
#hash with each
#update city

cities.each do |state, city|
	puts "#{city.capitalize} is in #{state}"
end
p cities

#method that deletes 
def delete_texas(places)
	places.delete_if {|state, city| state == :texas}
end
delete_texas(cities)
p "63"
p cities

#filter for a hash
#select
non_illinois = cities.select do |state, city|
	state != :illinois
end
p non_illinois

#4. method that will iterate over numbers in an array
# if the numbers are even , then its true
# if the numbers are odd , then its false
# 	remove even numbers from an array until you get to an odd number

#until the 
