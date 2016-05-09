#OUR ENCRYPTION METHOD

def encrypt(secret_password)
index = 0
#Use alphabet string as a reference
alphabet = "abcdefghijklmnopqrstuvwxyz"
#Loop through secret password letter by letter
	while index < secret_password.length
  		encryption = secret_password[index]
  		#Conditional statement for when encrypting for letter 'z'
  		if encryption == "z"
  			print "a"
  			index += 1
  		#Conditional statement to keep spaces as spaces
  		elsif
  			encryption == " "
  			print " "
  			index += 1
  		else
  			encryption = alphabet[encryption].next!
  			index += 1
  			print encryption
  		end
	end
end

#OUR DECRYPTION METHOD

def decrypt(secret_password)
index = 0
#Once again, using alphabet as a reference for our index
alphabet = "abcdefghijklmnopqrstuvwxyz"
	#Loop through secret password letter by letter
  	while index < secret_password.length
  	old_password = secret_password[index]
  		#Condtional statements for when the letter 'z' or space comes up
  		if old_password == "z"
  			print "a"
  			index += 1
  		elsif old_password == " "
  			print " "
  			index += 1
  		else
  			new_password = alphabet.index(old_password)
  			new_password = new_password.to_i
  			new2_password = new_password - 1
  			decryption = alphabet[new2_password]
  			print decryption
      		index += 1
  		end
	end
end

#Driver Code
#Prompting the user for input
puts "Would you like to encrypt or decrypt a password?"
answer = gets.chomp
puts "What is the password?"
password = gets.chomp
#If statement to see whether user would like to encrypt or decrypt
if answer == "encrypt"
	puts encrypt(password)
elsif answer == "decrypt"
	puts decrypt(password)
else
	puts "Sorry, I do not understand."
end

puts "Thank you, come again."


