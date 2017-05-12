# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  # method initializes a class instance setting it with state, pop density , population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # method calling predicted deaths method and speed_of_spread metod
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  # method takes 3 parameters and is private
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    # the if else seems to say the larger the density the higher the deaths and rounding down
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # speed is setting the number of months as the speed at 0
  # why is the speed slower when the population density is higher??
  # change it to months
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    months = 0.0

    if @population_density >= 200
      months += 0.5
    elsif @population_density >= 150
      months += 1
    elsif @population_density >= 100
      months += 1.5
    elsif @population_density >= 50
      months += 2
    else
      months += 2.5
    end

    puts " and will spread across the state in #{months} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
p '-----------------'


jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# creating a report for each state , and then finding it's virus effects. 
STATE_DATA.each do |state, state_info|
  report = VirusPredictor.new(state, state_info[:population_density], state_info[:population] )
  report.virus_effects
end



#=======================================================================
# Reflection Section