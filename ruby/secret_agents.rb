
#Take a string and for each letter, advance it forward by one letter in the alphabet. Space characters will remain a space. Z will return single "a".

def encrypt(password)
  index = 0
  while index < password.length
	
		if password[index] == " "
		   password[index] = password[index] 
		elsif password[index] == "z" 
      	   password[i] = "a" 
		else
		   password[index] = password[index].next 
		end
	  index += 1
  end
   password
end

#Decrypt a string. For each character, go back one letter. If character is "a" assign "z". If character is blank space, leave as blank space.
def decrypt(password)
  index = 0 
  result = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < password.length
  		if password[index] == " "
  		   password[index] == " "
  		else
  		   previous_letter = alphabet.index(password[index]) -1
  		   result += alphabet[previous_letter]
  		#a harder to read way:
  		#password[index] = alphabet[alphabet.index(password[index]) - 1 ]
  		end 
  		index += 1
  end 
  result
end


puts 'Would you like to encrypt or decrypt a password?'
answer = gets.chomp

puts 'What is your password?'
password = gets.chomp

if answer == "encrypt"
  puts encrypt(password)
elsif answer == "decrypt"
  puts decrypt(password)
else puts "please choose encrypt or decrypt"
end
#decrypt(encrypt("swordfish"))
#need a until loop to continue it
		



	 	# another way
	 	# else 
	 	# letter = password[index] 
	 	# alphabet = "abcdefghijklmnopqrstuvwxyz"
	 	# letter_spot = alphabet.index(letter) 
	 	# previous_letter = alphabet[letter_spot-1] 
	 	# password[index] = previous_letter

 	#put in alphabet, call the indexes, index = the one before it







