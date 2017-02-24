# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

# "zom".insert(1, 'o')
# => “zoom”
#"zoom".squeeze    ####not relevant"

# "enhance".center(4)
# => "    enhance    "

# "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
#

#!!!!####BEST#### 
#"the usual".concat(" suspects")
#=> "the usual suspects"

#!!!!####BEST#### 
#" suspects".prepend("the usual")
# => "the usual suspects"

#"The case of the disappearing last letter".chomp('r')
# => "The case of the disappearing last lette"
#"The case of the disappearing last letter".chop
#alternative 
#"The case of the disappearing last letter".slice(0..-2)

# "The mystery of the missing first letter".delete('T')
# => "he mystery of the missing first letter"
#!!!!#### might be BEST ####
#"Try the mystery of the first letter".slice(1..-1)

#####NOTES#####
#.slice(-1) gets the last letter
#.slice(0) gets the first letter 


# "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

#
#"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
#
#122 is a decimal representation of the character "z"

#
#"How many times does the letter 'a' appear in this string?".count "a"
# => 4

