# Ask name,
# Ask age and year of employee
	# check if age is not correct 
		# set current year
		# if age + year does not equal current year, then age is not correct. 
# Ask if employee wants garlic bread
# Ask if they want health insurance

puts 'how many employees do you want to process?'
employee_count = gets.chomp.to_i

employee_count.times do 

	puts "What is your name?"
	name = gets.chomp

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
			real_age = false
		else
			real_age = true
		end

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp.downcase
		if garlic == "y"
				garlic = true
			else 
				garlic = false
		end

	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp.downcase
			if insurance == "y" 
				insurance = true
			else 
				insurance = false
			end

	allergy = ''
	until allergy == 'done' || allergy == 'sunshine'
		puts 'What are your allergies? when done put done'
		allergy = gets.chomp
	end

	puts "allergy is #{allergy}"
	puts "name is #{name}"
	puts "garlic is #{garlic}"
	puts "insurance is #{insurance}"
	puts "real_age is #{real_age}"

	# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
	# 
	if allergy == 'sunshine'
		vampire = 'probably a vampire'
	else

		vampire = "inconclusive"


		if real_age && (garlic || insurance)
			vampire = "Probably not a vampire."
		end 

		# age = f / garlic = t / insurance = f **OR** 
		# age = f / garlic = f / insurance = t
		if real_age == false && (( garlic && !insurance ) || (!garlic && insurance))
			vampire = "Probably a vampire."
		end


		if  real_age == false && (garlic == false && insurance == false)
			vampire = "Almost certainly a vampire"
		end

		if  name == "Drake Cula" || name == "Tu Fang"  
			vampire = "Definitely a vampire" 
		end
	end
	puts vampire

end

