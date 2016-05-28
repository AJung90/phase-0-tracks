# Virus Predictor
# I worked on this challenge [by myself, with: Melanie Hahn].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# importing the file using a relative path (compared to the location of this file).
# require means importing the file using the full path.
require_relative 'state_data'

class VirusPredictor

  # Initializing state of new instance of class VirusPreditor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # run both methods using this one instance method
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # calculate the number of predicted deaths from virus
  def predicted_deaths
     # predicted deaths is solely based on population density
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

# our attempt to refactor the predicted_deaths method

# if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population density >= 50
#       factor = (@population_density / 50 ).floor * 0.1
#       number_of_deaths = (@population * factor).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end


  # calculates speed of spread of virus
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE

# Create Virus Prediction for all 50 states in a DRY way
STATE_DATA.each do |state, pop_stats|
  state_instance = VirusPredictor.new(state, pop_stats[:population_density], pop_stats[:population])
  state_instance.virus_effects
end

# initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
1. What are the differences between the two different hash syntaxes shown in the state_data file?
  One way to structure hash syntax would be to use the hash rocket. Another way would be to use 'key: value' where the key is a symbol.

2. What does require_relative do? How is it different from require?
  You can use require_relative to import a file if it is stored in the same folder as the one you are importing into, otherwise, you have to use require. Require means to import the file using its full path.

3. What are some ways to iterate through a hash?
  One way to iterate through a hash would be to use the .each or .map methods. Another way would be to use a loop and iterate through each key-value pairing at every index value of the hash.

4. When refactoring virus_effects, what stood out to you about the variables, if anything?
  There was no need to call the instance variables as they were already initialized and thus could be called anywhere within the class.

5. What concept did you most solidify in this challenge?
  The concepts I most solidified, yet still struggle a bit with, are the refactoring and also the syntax when iterating through a hash.
=end