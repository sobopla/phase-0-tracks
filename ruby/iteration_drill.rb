# Array Drills
require 'pp' #requiring pretty print
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,printing each item in the array separated by an asterisk

#DIFFERENCE BETWEEN PUTS AND P
	#puts has more code (put string)
	#p returning exactly as it evaluates to

p "------printing supply with p"
zombie_apocalypse_supplies.each {|supply| p supply + " * "} 
				
p "------printing supply with print messes with puts"#print is another way on a single line but it messes with the rest of the code ???.				
zombie_apocalypse_supplies.each {|supply| print supply + " * "}

puts "\n------printing supply with puts" #??? have to use \n to correct the lines after print
zombie_apocalypse_supplies.each {|supply| puts supply + " * "}




# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies in alphabetical order. Do not use any special built-in methods.
# ----



def alphabetize(arr)
	n = arr.length - 1
	index = 0 
	swapped = true
		   	   
	until index > n
		 arr.map! {|item| item.downcase}
		 n.times do |index| 
				 	if arr[index] > arr[index + 1]
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
p '----------alphabetize suppies----------------'
puts alphabetize(zombie_apocalypse_supplies)
		 

#-------- use of sort
# puts "sort"
# sorted = zombie_apocalypse_supplies.sort #{|letter, next|}
# p sorted




# 3. Create a method to see if a particular item (string) is in the zombie_apocalypse_supplies. Do not use any special built-in methods.For instance: are boots in your list of supplies?




def lookfor(arr,supply)
	arr.each {|item| return true if item == supply}   
end
p '-----------lookfor compass-------------'
puts lookfor(zombie_apocalypse_supplies,"compass")




# 4. You can't carry too many things, you've only got room in your pack for 5. Remove items in your zombie_apocalypse_supplies in any way you'd like, leaving only 5. Do not use any special built-in methods.


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

# 1. Iterate through extinct_animals hash, printing each key/value pair with a dash in between the key and value, and an asterisk between each pair.





def print_animals(extinct_animals)
	puts '----------animals hash-------------'
	extinct_animals.each do |animal, year|
		puts "#{animal}: #{year}"
	end
end

print_animals(extinct_animals)




# 2. Keep only animals in extinct_animals if they were extinct before the year 2000. Do not use any special built-in methods.




extinct_animals_before_2000 = {}
extinct_animals.map do |animal,year|
		if year < 2000
		extinct_animals_before_2000[animal] = year
	end
	end
p '-------------extinct_animals_before_2000--------'
#-----------USING PRETTY PRINT---------------------
pp extinct_animals_before_2000 




# 3. Our calculations were completely off, turns out all of those animals went extinct 3 years before the date provided. Update the values in extinct_animals so they accurately reflect what year the animal went extinct. Do not use any special built-in methods.


	

extinct_animals.map {|animal,year|
		extinct_animals[animal] = year - 3}
p '------------updated year-------------'
p extinct_animals



# 4. You've heard that the following animals might be extinct, but you're not sure. Check if they're included in extinct_animals, one by one: "Andean Cat" "Dodo" "Saiga Antelope" Do not use any special built-in methods.

# METHOD FOR ONE ANIMAL
		
def checkfor(hash,animal)
	hash.each do |extinct, val|
				if animal == extinct
				puts "#{animal} is extinct"
				end
			end
end
p '----------------------------checking for Dodo'
checkfor(extinct_animals,"Dodo")
			
# CHECK FOR ALL ANIMALS IN AN ARRAY
		
def is_extinct?(hash, arr)
	arr.each do |animal|
				if hash[animal] != nil
					p "#{animal} Is extinct"
				end
			end
		end
p '--------------checking whole array of animals ------'
species = ["Dodo","Andean Cat","Saiga Antelope"]
is_extinct?(extinct_animals,species)



	
				#------DOESN'T WORK -----------------------
				# checkfor = ["Andean Cat", "Dodo","Saiga Antelope"]
				# if hash[checkfor[1]] == checkfor[1]
				# 	puts "#{checkfor[1]} is NOT extinct"
				# end

				#------DOESN'T WORK -----------------------
				# def search(hash,arr) ## DOESN'T WORK
				# 	index = 1
				# 	until index > arr.length -1 
				# 	    hash.each_key do |animal, val|

				# 			if hash[arr[index]] == nil
				# 				puts "#{arr[index]} is NOT extinct"
				# 				index +=1
				# 			else
				# 				puts "#{arr[index]} is EXTINCT"
				# 				index +=1
				# 			end
				# 		end
				# 	end
				# end

				#search(extinct_animals,["Andean Cat","Dodo", "Saiga Antelope", "Passenger Pigeon"])

				#------DOESN'T WORK BUT USE THIS CONCEPT
						#hash[arr[0]] == nil
						#not extict
						#else 
						#extict 
						# hash["Dodo"]



#----------EXPERIMENTING WITH BUILT IN METHOD-----------------
def find_animal(hash,arr)
	index = 0
	until index > arr.length - 1
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
p '-----------lookfor animal with assoc-------------'
find_animal(extinct_animals,["Andean Cat","Dodo", "Saiga Antelope", "Passenger Pigeon"])



#??? -------------HOW TO USE AN ENUMERATOR WITH THIS ONE????---------------




# 5. We just found out that the Passenger Pigeon is actually not extinct! Remove them from extinct_animals and return the key value pair as a two item array. Find the built-in method that helps you accomplish this in the Ruby documentationfor Hashes.

		

p "---------living animals removed as array ----------"
living_animals = extinct_animals.assoc("Passenger Pigeon").flatten
p living_animals

#--------------FLATTEN THE WHOLE ANIMALS ARRAY GIVING 1 ARRAY FOR KEY , VALUE

p '------animals hash as array with key value flatten(0)------'
extinct_animals_arr = extinct_animals.flatten(0)
p extinct_animals_arr




#-----------WITH ENUMERABLE---------FOLLOW UP WITH ADVISOR
			# print_animals(extinct_animals)
			# p "-" * 24
			# p 'remove passenger pig'
			# x = extinct_animals.reject {|animal| animal == "Passenger Pigeon"} #don't know why this returns nothing without a variable
			# x.flatten
			# p "---flatten----"
			# p x.flatten #WHY ISN'T IT RETURNING ANYTHING
			# 
			# ????

			# #--------------ENUMERABLE---------------------#
			# p "-" * 24
			# p 'enumerable not equal to Passenger Pigeon:'
			# y = extinct_animals.find_all {|animal| animal != "Passenger Pigeon"}
			# y
			# print_animals(y)
			







