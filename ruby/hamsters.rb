


puts "Name of hampster?"
hamster_name = gets.chomp
puts "Name of hampster is #{hamster_name}"

puts "volume level from 1 to 10 of #{hamster_name}"
volume_level = gets.chomp
puts "volume level of hampster #{hamster_name} is #{volume_level}"


valid_input = false
until valid_input

puts "Fur color of hamster is?"
fur_color = gets.chomp
	

if fur_color =="brown"
puts "fur color of #{hamster_name} is brown"
valid_input = true
elsif fur_color =="white"
	puts "fur color of #{hamster_name} is white"
valid_input = true
elsif fur_color == "tan"
	puts "fur color of #{hamster_name} is tan"
	valid_input = true
else 
	puts "did not understand try: brown, white or tan"
end
end


good_candidate = false
until good_candidate

	puts "Is  #{hamster_name} a good canadate for addoption (y,n,maybe)?"
	addoption = gets.chomp
		

	if addoption =="y" #condition inside o3f aloop
		puts "Great! Lets find #{hamster_name} a home!"
		good_candidate = true
	elsif addoption =="n"
		puts "Oh no!"
		good_candidate = true
	elsif addoption == "maybe"
		puts "Yay there is a chance for #{hamster_name}"
		good_candidate = true
	else 
		puts "Learn how to read!!"
	end
end 
	
hamster_condition = false
until hamster_condition
	
puts "How old is he?"
	guessed_age = gets.chomp
	number_age = guessed_age.to_i


if guessed_age ==""
	age = nil

	puts "Thank you for your input."
	
	hamster_condition = true

elsif number_age > 0 && number_age < 11
	age = number_age
	puts "hamster age is #{number_age}"
	hamster_condition = true

else 
	puts "Not a recognized age"
end
end
print " You have a hamster named #{hamster_name} who's squeek is at a volume of #{volume_level} . #{hamster_name} is #{fur_color} and they are #{guessed_age} years young. 
Your answer for their adoptability was #{addoption}. 










