puts "What is the hamster's name?"
hamster_name=gets.chomp
	while hamster_name.empty?
 		puts "You must answer this question"
 	puts "What is the hamster's name"
 	hamster_name = gets.chomp
	end

puts "How loud is the hamster? (1-10)"
volume=gets.chomp
	while volume.empty?
 		puts "You must answer this question"
 	puts "How loud is the hamster?"
 	volume = gets.chomp
 	volume.to_i
	end

puts "What is the hamster's fur color?"
fur_color=gets.chomp
	while fur_color.empty?
 		puts "You must answer this question"
 	puts "What is the hamster's fur color"
 	fur_color = gets.chomp
	end

puts "Is the hamster a good candidate for adoption? (Y or N)"
adoption=gets.chomp
	while adoption.empty?
 		puts "You must answer this question"
 	puts "Is the hamster a good candidate for adoption? (Y or N)"
 	adoption = gets.chomp
	end

puts "How old do you think the hamster is?"
age=gets.chomp
	if age.empty?
 		puts nil
	end
	
puts "The hamster's name is #{hamster_name}.
	The hamster's volume is #{volume} on a scale of 1-10.
	The hamster's fur color is #{fur_color}.
	You answered #{adoption} to the question, 'Is the hamster a good candidate for adoption?'
	The hamster is #{age} years old."

puts "Is all this information correct?(yes/no)"
validate_info = gets.chomp