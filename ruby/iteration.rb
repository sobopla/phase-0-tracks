def music_list
	genre1 = "pop"
	genre2 = "classical"
	puts "there are lots of music genres"
	yield(genre1,genre2)
end

music_list { |genre1, genre2| puts "You can listen to #{genre1} or #{genre2}"
yield

# declare an array and a hash, with some data. 
# .each on an array
# .each on a hash
# .map! on array
# no map! on hash
# Demonstrate that you can iterate through each one using .each, and then using .map!
#  (modifying the data in some way). 
#  Note that you can't call .map! on a hash, so you can skip that 
#  (.map returns an array, so a destructive map method is logically impossible on a hash). 
# Print the data structures before and after each
#  call to demonstrate whether they have been modified or not.