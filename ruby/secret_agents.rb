
# W E I T Z E N K O R N 
# 0 1 2 3 4 5 6 7 8 9 10
#psuedocode
#need a encrypt method
#that advances every letter of a string one letter forward
# index = 0
# (advance string letter forward)
# define index in password
# advance password.index +1 (forward) 
# if space is entered then space is equal to an index and not a !
# space will equal the password index (be a part of it's index)
#decrypt
#define the index of the alphabet using a string "abcdefghijklmnopqrstuvwxyz"
#equate the alphabet index to the password index number
#move the password index to the alphabet index before the password index in the alphabet

# index += 1

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

def decrypt(password)
  index = 0 
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < password.length
  password[index] = alphabet[alphabet.index(password[index]) - 1 ]
  index += 1
  end 
  password
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
	 	# 	letter = password[index] 
	 	#  	alphabet = "abcdefghijklmnopqrstuvwxyz"
	 	#  	letter_spot = alphabet.index(letter) 
	 	#    	previous_letter = alphabet[letter_spot-1] 
	 	#    	password[index] = previous_letter

 	#put in alphabet, call the indexes, index = the one before it







