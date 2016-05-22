#Define class and instance methods along with attributes for gender and ethnicity

class Santa

	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.insert(-1, reindeer_name)
	end

end

#An empty array for our Santas
santas = []
#An array for possible gender types
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#An array for possible ethnicities
ethnicity = ["white", "Asian", "black", "Latino", "Prefer not to say", "N/A"]

#Create a loop that will randomly create Santas using the array of example genders and array of example ethnicities
#New santas will be stored in the Santas array and will have an age attribute between 0-140

count = 0

while count < 10
	new_santa = Santa.new(gender.sample, ethnicity.sample)
	new_santa.age = rand(0..140)
	santas.push(new_santa)
	count += 1
end

p santas


#Driver Code
# puts santa = Santa.new("male", "Asian")

# santor = Santa.new("female", "white")
# p santor.get_mad_at("Dasher")
