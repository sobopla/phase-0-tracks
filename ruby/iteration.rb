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