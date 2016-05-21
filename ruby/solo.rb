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


# Define tennis player class with instance methods, along with attributes for name, style of play, and serve speed
class Tennis_player

	attr_reader :name
	attr_accessor :speed_of_serve, :style_of_play

	def initialize(name, style_of_play)
		puts "Initializing tennis player instances..."
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

	def speed_increase(mph)
		mph = mph.to_i
		new_speed = @speed_of_serve + mph
		puts "Your serve is now #{new_speed} mph!"
	end

end

# My tennis player generator program

puts "Hi, welcome to the Tennis Player generator. Here you will customize your very own hitting partner."

tennis_players = []

count = 0

puts "How many hitting partners would you like to create?"
partners = gets.chomp.to_i

while count < partners
	puts "What would you like to name your partner?"
	name = gets.chomp
	puts "What style of play would you like to give your partner?"
	style_of_play = gets.chomp
	new_player = Tennis_player.new(name, style_of_play)
	tennis_players.push(new_player)
	count +=1
end

puts "Here are all your new hitting partners:"
p tennis_players
tennis_players.each do |player|
	p "#{player.name.capitalize}'s style of play is #{player.style_of_play}, with a serve speed of #{player.speed_of_serve} mph."
end
