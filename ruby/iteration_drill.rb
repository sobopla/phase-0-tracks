# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,printing each item in the array separated by an asterisk
# ----



p "1"
zombie_apocalypse_supplies.each {|supply| p supply + " * "} #print is another way on a single line.

#p "1.a" #on a new line use puts
#zombie_apocalypse_supplies.each {|supply| puts supply + " * "}
#p 1.b #as a string with quotes
# zombie_apocalypse_supplies.each {|supply| p supply + " * "}




# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies in alphabetical order. Do not use any special built-in methods.
# ----



		def alphabetize(arr)
		   n = arr.length - 1
		   index = 0 
		   swapped = true
		   
		   
		    until index > n
		    	arr.map! {|item| item.downcase}
		    n.times do |index| if arr[index] > arr[index + 1]
		    
		                       first = arr[index]
		                       second = arr[index + 1]
		                       arr[index] = second
		                       arr[index + 1] = first
		                       swapped = true
		                      end
		            end
		         index += 1 
		  end
		  arr 
		end
		  alphabetize(zombie_apocalypse_supplies)
		 # p 'alpha------------------'
		 # p zombie_apocalypse_supplies

#-------- use of sort
		# puts "sort"
		# sorted = zombie_apocalypse_supplies.sort #{|letter, next|}
		# p sorted




# 3. Create a method to see if a particular item (string) is in the zombie_apocalypse_supplies. Do not use any special built-in methods.For instance: are boots in your list of supplies?
# ----


		def lookfor(arr,supply)
			arr.each {|item| 
			if item == supply
			 return true  #how do I state if it does't have?' 
			end}
			return false
		end
		p '-----------lookfor compass-------------'
		lookfor(zombie_apocalypse_supplies,"compass")




 

# 4. You can't carry too many things, you've only got room in your pack for 5. Remove items in your zombie_apocalypse_supplies in any way you'd like, leaving only 5. Do not use any special built-in methods.
# ----

	#-----COMMENT OUT TO CHECK CODE-------------
	# while zombie_apocalypse_supplies.length > 5
	# 	zombie_apocalypse_supplies.pop
	# end
	# p "----after pop-----"
	# p zombie_apocalypse_supplies







# 5. You found another survivor! This means you can combine your supplies. Create a new combined supplies list out of your zombie_apocalypse_supplies and their supplies below. You should get rid of any duplicate items. Find the built-in method that helps you accomplish this in the Ruby documentation for Arrays.




		other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
		                            "solar battery", "flashlight"]
		combined_survivor_supplies = zombie_apocalypse_supplies + other_survivor_supplies
		puts '-----------combined supplies-------------'
		puts combined_survivor_supplies.flatten.uniq



# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----



	def print_animals(extinct_animals)
		puts '----------animals hash-------------'
		extinct_animals.each do |animal, year|
			puts "#{animal}: #{year}"
		end
	end
	print_animals(extinct_animals)




# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----


		extinct_animals_before_2000 = {}
		extinct_animals.map do |animal,year|
			if year < 2000
				extinct_animals_before_2000[animal] = year
			end
		end
		p '-------------extinct_animals_before_2000--------'
		p extinct_animals_before_2000







# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

	

	extinct_animals.map {|animal,year|
		extinct_animals[animal] = year - 3
	}
	p '------------updated year-------------'
	p extinct_animals



# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----


		 def find_animal(hash,arr)
		  index = 0
		  	until index > arr.length
				if
				hash.assoc(arr[index]) == nil
				puts "#{arr[index]} is NOT extinct_animals"
				index += 1
				else 
				hash.assoc(arr[index]) == arr[index]
				puts "#{arr[index]} YES IS IN extinct_animals"
				index +=1  #== arr[index]
				end
			end
		end
		
	
		p '-----------lookfor animal-------------'

	    p find_animal(extinct_animals,["Andean Cat","Dodo", "Saiga Antelope", "Passenger Pigeon"])
	    p "I'm not sure why this printed a blank sentence or if this is wrong because it's a built in method of .assoc but it sorta works??"







# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----









