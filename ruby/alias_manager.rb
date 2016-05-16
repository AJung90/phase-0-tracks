#Prompt the user to enter their real name
puts "What is your real name?"
real_name = gets.chomp

#Define a method that takes the real name and swaps the first and last name
def name_swap(real_name)
	fake_name = real_name.downcase.split(" ")
	fake_name.reverse!
	fake_name = fake_name.join(" ")
	fake_name = fake_name.split(" ")
end

