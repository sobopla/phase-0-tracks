#expect
#name = "cat dog"
#letrs = name.chars.reverse #=> ["d", "o", "g", " ", "c", "a", "t"]
                              #   f    u    h         d    e    v
#take a name and reverse it's words
#shift every vowel to the next vowel
      #store vowel 
      #if name contains a u => vowel becomes a
#shift every other letter to the next letter
      #store consonants 
      #if name contains a z => letter becomes b 
#store the name to be capitalized
#store the alias to be capitalized

#capitalize method
def cap(name) 
  name.split(' ').each {|name| name.capitalize!}.join(' ') 
end

#reverse name
def reverse(name)
  name.split(' ').reverse.join(' ').chars
end

#make alias method  
def convert(name)
  vowels = ["a", "e", "i", "o", "u"]
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  n = name.length 

  reversed = reverse(name)
  
  
  reversed.map! do |char| 
    if char == "u" 
      char = "a"
    elsif  char == "z"
      char = "b"
    elsif vowels.include?(char) 
      char = vowels[vowels.index(char) + 1]
    elsif consonants.include?(char)
      char = consonants[consonants.index(char) + 1]
    else char = char
    end
  end

  reversed.join('')
  
end 

 # DRIVER 
 loop do 
   puts "What is the spy's name?"
         name = gets.chomp.downcase # deal with capitals
         break if name == "quit" || name == "done"

         aka = convert(name) # Perform alias-making method on given name.

         cap(aka)
         #hash for names
         name_info = {"Real_name" => [cap(name)], "Alias" => [cap(aka)]}

        # puts "The Alias for #{name_info["Real_name"]} is  #{name_info['Alias']}"
        puts 'The real name of the spy is: '
        puts name_info["Real_name"] 
        puts "The alias of the spy is: #{cap(aka)}"
        p name_info 
  end
         #iterate over hash to print out key and values
