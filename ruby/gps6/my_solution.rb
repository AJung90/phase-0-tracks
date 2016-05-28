# Virus Predictor# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

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