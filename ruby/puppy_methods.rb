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