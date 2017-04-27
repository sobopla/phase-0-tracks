#RELEASE 1

bands = ["the stooges","love", "the flying burrito brothers", "jefferson airplane", "fleetwood mac"]
groups = {fleetwood_mac: "stevie nicks", rolling_stones: ["kieth richards","mick jagger"], flying_burrito_brothers: "gram parsons"}

#.each
#a
bands.each do |band|
	p band
end
#h
groups.each do |band, singer|
	puts "A singer in #{band.to_s.sub(/[_]/, " ")} is #{singer}"
end #don't know how to get rid of a second '_' (until .include? "_" = false, puts string?)

#.map!
#a
p bands
bands.map! do |band|
	name = band.split 
	name.map! do |name|
		name.capitalize
	end
	band = name.join(" ")
end
p "bands capitalized:"
p bands
#---------------------------------------------------

#RELEASE 2 - uncomment method to check code
# 1. delete
#a

# bands.delete_if {|band| band.include? "a"}
# p "bands deleting:"
# p bands

#h

# groups.delete_if {|group, singer| group == :rolling_stones}
# p "groups deleting The Rolling Stones"
# p groups
# 2. filter one
#a

# bands.select!{|band| band.length < 5} #has to be bang to return the right bands
# p "bands that are four letters or less"
# p bands

#h

# groups.select {|band, singer| band != :love}
# p "select groups that are not Love"
# p groups

#3 filter two
#a 

# word = "Airplane"
# bands.keep_if {|band_name| band_name.include?(word)}
# p "filter method to find bands that have the word Airplane in them"
# p bands 

#h
# groups.reject! {|band, singer| band == :love}
# p "filters groups out that are the band Love"
# p groups

#testing another one with the nested array values
# groups.reject! {|band, singer| singer.include?("kieth richards")}
# p "testing if you just put part of the value in nested array"
# p groups

#4 A method that will remove items from a data structure until the condition in the block evaluates to false, then stops
#-is drop_while the only one? how many are there?
##a

# one_word_bands = bands.drop_while do |band| 
# 	band.include?(" ")
# end
# p "finds a band that doesn't include a space but will not return all the bands with spaces"
# p one_word_bands

#h hash doesn't have one unless you first turn the hash to an array, iterate, then turn back to a hash with to_h or 
# or you could use a built in method for hashes to get an array of either the keys or values and then use `take_while` on that array
# with either `hash.keys` or `hash.values`
#psuedocode


