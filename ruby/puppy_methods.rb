class Puppy

	def initialize
		puts "Initializing new puppy instance..."
	end

  	def fetch(toy)
	    puts "I brought back the #{toy}!"
	    toy
  	end

  	def speak(i)
  		puts "Woof!" * i
	end

	def rollover
		puts "rolls over"
	end

	def dogyears(human_years)
		human_years * 7
	end

	def run(i)
		puts "running round in a circle " * i
	end

end


#DRIVER CODE
ralph = Puppy.new
ralph.run(7)
ralph.rollover
ralph.speak(4)
ralph.fetch("Giant teddy bear")


#NEW CLASS
class Athlete
	attr_asseccor = @health
	def initialize
		@health = 100
		@bones = "steel"
		@stamina = 50
		puts "initializing Athlete with health of #{@health},\nbones of #{@bones}, \nand stamina at #{@stamina}"
	end

	def injure
		@health -= 20
		puts "athlete got injured and now has a health at #{@health}"
	end

	def take_steroids
		@stamina += 30
		puts "athlete took steroids and now has #{@stamina} stamina"
	end

	def get_operation
		@bones = "titanium"
		puts "Athlete is recovering but now has #{@bones} bones"
	end

	def play_olympics(sport)
		puts "Athlete won a Silver Metal at #{sport} and can now afford an operation!"
	end
	end

	 

stan = Athlete.new
p "**** health"
stan.health
stan.injure
stan.take_steroids
stan.play_olympics("pole vault")
stan.get_operation

athletes = []

50.times do #it's annoying to read 50 so I tested with 10
	athlete = Athlete.new
	athletes << athlete
end
p athletes

athletes.each do |instance|
	instance.injure
	instance.take_steroids
end