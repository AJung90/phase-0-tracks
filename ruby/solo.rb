# ATHLETE TYPE--------------
# Tennis player

# CHARACTERISTICS------------
# Height: varies
# Speed of serve: varies
# Style of play: varies
# Name: varies
# Competitive: yes

# BEHAVIOR-------------------
# Run
# Hit
# Argue
# Celebrate

class Tennis_player

	attr_reader :name
	attr_accessor :speed_of_serve, :style_of_play

	def initialize(name, style_of_play)
		puts "Initializing tennis player instance..."
		@name = name
		@style_of_play = style_of_play
		@speed_of_serve = 10
	end

	def celebrate
		puts "Let's go, baby!!!"
	end

	def argue(call)
		puts "That ball was #{call}.upcase!"
	end

end

puts "Hi, welcome to the Tennis Player generator. Here you will customize your very own hitting partner."

tennis_players = []
