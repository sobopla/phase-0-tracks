# Ask name,
# Ask age and year of employee
	# check if age is not correct 
		# set current year
		# if age + year does not equal current year, then age is not correct. 
# Ask if employee wants garlic bread
# Ask if they want health insurance
 
puts "What is your name?"
name = gets.chomp.capitalize

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i

#AGE TRICK PSUEDOCODE		 
#if age and year don't line up properly
#if age_put subtracted from current year = year 
#then age = true
#then age is true (or right as 4.4 says)
current_year = 2017
	if year_born + age != current_year
		age = false
	else
		age = true
	end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp.downcase
	if garlic == "yes" || "y"
			garlic = true
		else 
			garlic = false
			
		end

puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp.downcase
		if insurance == "yes" || "y"
			insurance = true
		else 
			insurance = false
		end