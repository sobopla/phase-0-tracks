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

#prompt user for client's info
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


#hash
client = {  account: account_no,
			name: name_of_client,
			rooms: room_no,
			theme: color, 
}
#print
client.each {|key,value|
  puts "#{key}: #{value}"
}
# input = client.values
# info = client.keys
# puts info
# puts input
# update a key
puts "Do you need to change the color theme?"
change = gets.chomp
if change == "yes"
  puts "what is the new color theme?"
  changed_theme = gets.chomp
  client[:theme] = changed_theme
end
client.each {|key,value|
  puts "#{key}: #{value}"
}

#or can write the above this way
  ##client:[:theme] = gets.chomp


# if change == "no"
# 	end
# if change == "yes"
# puts "what is the new color theme?" 
# 	changed_theme = client.
# hash = 
# p client 
# #make changed_theme = theme - (use !??)
# #changed_theme = theme


















