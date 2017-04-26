def music_list
	genre1 = "pop"
	genre2 = "classical"
	puts "there are lots of music genres"
	yield(genre1,genre2)
end

music_list { |genre1, genre2| puts "You can listen to #{genre1} or #{genre2}"}


# declare an array and a hash, with some data. 

#-----------------ARRAY------------------:
array = [1, 2, 3, 4, 5, 6, 77, 9, 19, 20, 43, 2007]
new_array = []

#array with .each
array.each do  |num| num.next #.next does not change original array
	new_array << num.next
end
p "---original array---"
p array
p "new_array of next number:"
p new_array
p "-" * 32

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
p "array is now + 3:"
p array #altered array
p "-" * 32

#array with a delete ?? is this the same as a filter?
p "array is now:"
p array
array.delete_if {|i| i < 5} #permanently changes array
puts "array deleting num less than 5:"
p array
p "-" * 32

#filter method for array
p "array is still:"
p array
p "filter array with select > 9 | returns only & needs it's own variable:"
select_num = array.select{|num| num >= 10} #select won't permanently change array so it has to be set to a variable
p select_num
p "-" * 32

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops 
names = ["sara", "alisa", "jeff", "amy", "joe", "samantha", "pete"]
p names
char = "a"
names.keep_if do |name| #permanently alters hash
	name.include?(char)
	end
p "names that contain letter 'a':"
p names
p "-" * 32



#---------------HASH-----------------------

cities = {texas: "austin", illinois: "chicago", california: "sacramento"}

#hash with each to update city

cities.each do |state, city|
	puts "#{city.capitalize} is in #{state}"
end
p "cities each capitalized:"
p cities
p "-" * 32

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
p "-" * 32

#filter for a hash with select
non_illinois = cities.select do |state, city|
	state != :illinois
end
p "cities not in Illinois:"
p non_illinois
p "-" * 32
p "original cities"
p cities
p "-" * 32

#4. hash method that will iterate over numbers in an array
# if the numbers are even , then its true
# if the numbers are odd , then its false
# 	remove even numbers from an array until you get to an odd number

char = "e"
cities.keep_if do |state,city| #permanently alters hash
	city.include?(char)
	end
p "cities that contain letter 'e':"
p cities

cities.keep_if do |state,city|
	city.length <= 7
end
p "cities with length 7 or less:"
p cities
