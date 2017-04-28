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
puts "Do you prefer a light or dark palletes?"
pallete = gets.chomp.to_s
	if pallete == "light"
		pallete = true
	else
		pallete = false
	end
client = {account: account_no, name: name_of_client, rooms:room_no, theme:color, light: pallete}

client.each {|key, value| puts "#{key}: #{value}"}

#offer change
puts "Do you need to change the color theme?"
change = gets.chomp.to_s
  if change == "yes"
  	puts "what is the new color theme?" 
  	theme = gets.chomp.to_s
  	client[:theme] = theme #changes the color entry
  end

client.each {|key,value| puts "#{key}: #{value}"}










