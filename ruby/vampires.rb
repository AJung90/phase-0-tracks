puts "How many employees will be processed?"
employees = gets.chomp.to_i

counter = 0

while counter < employees

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp

puts "Name any allergies, one at a time. When you are finished, type 'done'."
allergies = gets.chomp


until allergies == "done"
	puts "Do you have any more allergies?"
	allergies = gets.chomp
if allergies == "sunshine"
	puts "Probably a vampire"
end	
end
		

if (age == 2016 - year) && (garlic == "yes" || health_insurance == "yes")
	puts "Probably not a vampire"

elsif (age != 2016 - year) && (garlic != "yes" || health_insurance != "yes")
	puts "Probably a vampire"

elsif (age != 2016 - year) && (garlic != "yes") && (health_insurance != "yes")
	puts "Almost certainly a vampire"

elsif (name == "Drake Cula") || (name == "Tu Fang")
	puts "Definitely a vampire"

else 
	puts "Results Inconclusive"

end	

counter +=1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
