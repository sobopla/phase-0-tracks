puts "How many employees are interviewing"
interview = gets.chomp.to_i

allergy = "sunshine"
user_input = ""
	
while interview > 0
	interview -= 1
	
	puts "What is your name"
	name = gets.chomp
	
 	while user_input != 'sunshine'
	 puts "Hi, #{name} do you have any allergies? Please say done when finished"
	 user_input = gets.chomp
	 break if user_input == 'done'
	 end
#AGE TRICK PSUEDOCODE		
# because a newly turned vampire might be 100 old but sprighly enough to work
# usually new employees are not 100 years old
# output is correct to the year output 
#if age and year don't line up properly
#if age_put subtracted from current year = year 
#then age = true
#then age is true (or right as 4.4 says)
	puts "How old are you?"
	 age_put = gets.chomp.to_i
	puts "What year were you born?"
	year = gets.chomp.to_i
		
	current_year = 2017
		if year + age_put != current_year
			age = false
		else
			age = true
		end



	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp
		if garlic == "yes"
			garlic = true
		else 
			garlic = false
			
		end

	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp
		if insurance == "yes"
			insurance = true
		else 
			insurance = false
		end
p "#{name}, #{age_put}, #{year}, #{age}, #{garlic}, #{insurance}"
	case 
	#if else / 
	when age && (garlic || insurance)
		puts "Probably not a vampire."
	when !age && (!garlic && !insurance)
		puts "Almost certainly a vampire."
	when !age && (!garlic || !insurance)
		puts "Probably a vampire"
	#can Drake be it's own case theirs multiple / case statement is too big
	#block passes something into ruby - - pass to 
	when name == "Drake Cula" || "Tu Fang"  
		puts "Definitely a vampire."
	else
		puts "Result inconclusive"
	end
	# problem with order above returning the same for the previous entered name, or I don't know about 
#another kind of loop that exists 
#does Drake need to be in it's own case or an if ouside of the case, if so where does it go?
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end


		
