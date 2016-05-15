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

#Prints the hash back with appropriate data filled in
puts client	

#Prompt the user for an opportunity to make any changes
puts "Would you like to make any changes? Yes or No."
	answer = gets.chomp

	if answer == "No"
		puts client
	end
	
	if answer == "Yes"
		puts "What section would you like to modify?"
		section = gets.chomp
	end

	if section == "name"
		puts "What is your name?"
		name = gets.chomp
		client[:name] = name
		p client
	elsif section == "age"
		puts "How old are you?"
		age = gets.chomp.to_i
		client[:age] = age
		p client
	elsif section == "city"
		puts "What city do you live in?"
		city = gets.chomp
		client[:city] = city
		p client
	elsif section == "children"
		puts "How many children do you have?"
		children = gets.chomp
		client[:children] = children
		p client
	elsif section == "vintage"
		puts "Do you want a vintage look for your house?"
		vintage = gets.chomp
			if vintage == "yes"
				client[:vintage] = "true"
			else
				client[:vintage] = "false"
			end
	elsif section == "modern"
		puts "Do you want a modern theme for your house?"
		modern = gets.chomp
			if modern == "yes"
				client[:modern] = "true"
			else
				client[:modern] = "false"
			end
	else
		puts "Thank you for taking the time to answer these questions!"
	end

#Displays most updated client hash
	puts client	
