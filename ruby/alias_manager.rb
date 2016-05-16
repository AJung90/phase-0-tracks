#Define a method that takes the real name and swaps the first and last name
def name_swap(real_name)
	fake_name = real_name.downcase.split(" ")
	fake_name.reverse!
	fake_name = fake_name.join(" ")
	fake_name = fake_name.split(" ")
end

#Define a method that takes each vowel in the name and changes it to the next vowel in the alphabet
def next_vowel(letter)
vowel = "aeiou"
current_index = vowel.index(letter)
vowel[current_index + 1]
	if letter == "u"
		print "a"
	else letter == " "
		print " "
	end
end

#Define a method that takes each consonant in the name and changes it to the next consonant in the alphabet
def next_consonant(letter)
consonant = "bcdfghjklmnpqrstvwxyz"
current_index = consonant.index(letter)
consonant[current_index + 1]
	if letter == "z"
		print "b"
	else letter == " "
		print " "
	end
end


#Prompt the user to enter a name and repeat this process until they say 'quit', to which the program will then end

puts "Please enter your full name. If you are done with the program, please enter 'quit'."
real_name = gets.chomp
real_name2 = name_swap(real_name)
real_name3 = real_name2.join
real_name4 = real_name3.split('')
real_name5 = real_name4.map{|letter| letter.next_consonant}

#Got as far as being able to create an array with each individual letter of the swapped name having its own index value. However, when I call upon the method that I defined to switch the consonants and vowels, an error message arises that my methods are private. Otherwise I would run the other block and hopefully be able to get the alias for the name I inputted initially. 
