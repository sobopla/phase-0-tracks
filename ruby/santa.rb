# class Viking
#     def initialize(attrs) # assume attrs is a hash
#         @name = attrs[:name]
#         @age = attrs[:age]
#         @health = attrs[:health]
#         @strength = attrs[:strength]
#     end
# end

# oleg = Viking.new(:name => "Oleg", :age => 19, :health => 100, :strength => 8)
class Santa

	def initialize(attrs)#I wanted to try instanciation with a hash since I've already done it with a string
		@gender = attrs[:gender]
		@name = attrs[:name]
		@ethnicity = attrs[:ethnicity]
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing Santa instance ..."
		puts "Initializing Santa instance: Name is #{@name}, a #{@gender} with a background of #{@ethnicity}"
	end

	def speak
		puts "HO ho ho! Haaaappy Holidays"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end

	#method to: sample array and turn into a hash key value
	
	def celebrate_birthday
	end
	

end

sam = Santa.new(:name =>"Sam", :ethnicity =>"German", :gender => "female")
sam.speak
sam.eat_milk_and_cookies("snickerdoodle")

exgenders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "demi", "bi", "onkali"]
exethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Korean", "Latina", "Parisian"]
names = ["amy", "ted", "sara", "rach", "ed", "bo", "al", "monica", "alisa", "jeff", "sammy"]

20.times do 
e = Santa.new(:name => names.sample, :ethnicity => exethnicities.sample, :gender => exgenders.sample)
end



