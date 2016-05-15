#Initialize a hash for all of each client's information
client = {}

#Prompt the user to enter their name, age, city, number of children, and whether they want a specific theme for their decor
puts "What is your name?"
name = gets.chomp
client[:name] = name

puts "How old are you?"
age = gets.chomp.to_i
client[:age] = age

puts "What city do you live in?"
city = gets.chomp
client[:city] = city

puts "How many children do you have?"
children = gets.chomp.to_i
client[:children] = children

puts "Do you want a vintage look for your house?"
vintage = gets.chomp
	if vintage == "yes"
		client[:vintage] = "true"
	else
		client[:vintage] = "false"
	end

puts "Do you want a modern theme for your house?"
modern = gets.chomp
	if modern == "yes"
		client[:modern] = "true"
	else
		client[:modern] = "false"
	end

	


