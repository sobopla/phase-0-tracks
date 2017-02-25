#------------- CLIENT DETAILS --------------
#-----psuedocode
#enter client info: 
#name gets chomp name into string
#age gets age to i
#number of rooms to i
#color theme to string
#color bright to true/false
#color muted to true/false
#take info with keys
#ask user to update a color theme
#turn color theme into a symbol
#print the input as a hash
#exit

#prompt 
puts "Enter client information"
puts "Name:"
name_of_client = gets.chomp.to_s
#prompt user for client account #
puts "Enter account no"
account_no = gets.chomp.to_i
#number of rooms to i
puts "Enter number of rooms to decorate"
room_no = gets.chomp.to_i
puts "What is the Color Theme?"
color = gets.chomp
#boolean the following
#puts do they like muted or bright colors?
# muted = true
# bright = false
# if bright = false puts !don't use any black, picky clients think black is a bright color!


#hash
client = {  account: account_no,
			name: name_of_client,
			rooms: room_no,
			theme: color, 
}
#output
client.each {|key,value|
  puts "#{key}: #{value}"
}
#offer change
puts "Do you need to change the color theme?"
if change == "yes"
	puts "what is the new color theme?" 
	client[:theme] = gets.chomp #changes the color entry
end

client.each {|key,value|
  puts "#{key}: #{value}"
}

##another way that's longer code:
	# if change == "yes"
	#   puts "what is the new color theme?"
	#   changed_theme = gets.chomp
	#   client[:theme] = changed_theme
	# end






















