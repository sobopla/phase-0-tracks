#------------- CLIENT DETAILS --------------
#-----psuedocode
#enter client info: 
#name gets chomp name into string
#age gets age to i
#number of rooms to i
#color theme to string
#color bright to true/false
#color muted to true/false

#ask user to update a color theme
#turn color theme into a symbol
#print the input as a hash

#ask user if they want to update other fields
#turn answer into a symbol
#get update data from user
#make the symbol update the key in the hash with the data as the value

puts "Enter client information"
puts "Name:"
name_of_client = gets.chomp.to_s
puts "Enter account no"
account_no = gets.chomp.to_i
puts "Enter number of rooms to decorate"
room_no = gets.chomp.to_i
puts "What is the Color Theme?"
color = gets.chomp
puts "Do you prefer a light or dark theme?"
light = gets.chomp.to_s
	if light == "light"
		light = true
	else
		light = false
	end
