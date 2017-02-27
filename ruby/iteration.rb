def list_music
	
	genre1 = "pop"
	genre2 = "classical"
	puts "there are many types of music"
	yield(genre1, genre2)
end

list_music { |genre1, genre2| puts "You can choose from #{genre1} and #{genre2}" }


#.each with an array
music_genres = ["pop", "classical", "jazz", "country", "rock"]
music_genres_capitalized = []
music_genres.each do |genre|
	music_genres_capitalized << genre.capitalize
end
p music_genres
p music_genres_capitalized

#.map with an array
cities = ["austin", "chicago", "nashville", "dallas", "houston", "asheville"]
cities.map! do |city| 
	city.capitalize
end
p cities

#.each with a Hash
	cities_and_states = {
	"austin" => "texas",
	"chicago" => "illinois",
	"nashville" => "tennessee",
	"dallas" => "texas",
	"houston" => "texas",
	"asheville" => "north carolina"
}
cities_and_states.each do |city, state|
	puts "#{city} is in #{state}"
end

#1.  method that iterates through items , deleting
#----------------ARRAY----------------------#
a = [1,2,3,4,5,6,7]
#1 method that deletes items less than 5 

a.delete_if { |i| i < 5 }

#----------------HASH-----------------------#
#loop through the cities to check the state
# for each city check the state, for each key check it's value , if value == texas, then delete

def delete_texas(places_hash)
	places_hash.delete_if {|city, state| state == "texas"
	}
end
delete_texas(cities_and_states)
p cities_and_states #now the hash has no texas cities and is permanently altered

#2. method that filters a data structure for only items that do satisfy a certain condition
#2 ----------------ARRAY----------------------#

#method that keeps numbers less than 5
def  keep(a)
	a.select { |i| i < 5 }
end

#2 ----------------HASH----------------------#
#???how do I keep or undo to the original cities_and_states for having this method placed here in the code , and where would the destructive need to go? after this method?

city_state = {
  texas: ["austin","dallas","houston"],
  illinois: ["chicago","springfield"],
  tennessee: ["nashville","memphis"],
  north_carolina: ["asheville"]
}
non_texas = city_state.select do |state,city|
  state != :texas
end
arr = non_texas.values
puts arr
array_flat = non_texas.values.flatten #makes it it's own array
#>>>>??? how would I do this method on the cities_and_states above without symbols??

#3 method that filters data for only items satisfying a certain condition - numbers greater than 5
#3 ------------------- ARRAY ------------------------
                   #NEED ARRAY
#3 ------------------- HASH ------------------------

#give a array of values (i.e. all cities)
allCities = city_state.values.flatten #gives nested array so turn into one array 
p allCities #print all cities
#find all cities that begin with an a
aCity = allCities.select {|city| city.start_with?("a") }
puts aCity #output cities with a

#4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops 
#4. ------------------- ARRAY ---------------- not a good example
#redo

def delete_letters
 letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n"]
  puts "The original array is #{letters}"
  letters.each do |letr|
    while letters.length > 0
      puts "list of letters: #{letters}"
      letters.delete_at(-1)
    end  
  end  
end
#4. ------------------- HASH  --------------







