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

