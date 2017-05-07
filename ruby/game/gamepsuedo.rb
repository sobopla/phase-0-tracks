#game has stored phrases
#Greet the user
#Ask to begin y/n or choose a phrase 
#phrase given will start the game or
#begin will start (instantiate the game)
#have user guess a letter in the phrase
#display message if it's not in the phrase
#if letter is correct display a printout of the phrase with ALL THE LOCATIONS of the letter in the phrase revealed
#give the user the amount of guesses the same amount of letters in the phrase minus the spaces
#dont count repeated guesses
#end the game when the guesses are over


# ORIGINAL PSUEDOCODE - my code reviews kept saying to keep the ruby lingo out of psuedocode. so the above psuedocode is rudimentary, but here is what I originally wrote anyway:


# PHRASE
#get a phrase from a user
#phrase will equal an instanciation of the game class (  game.new(gets.chomp)  

# BOARD
# make a board to display to the user
# turn that phrase into a board with _ replacing letters (gsub)

# HOW MANY GUESSES?
# get amount of letters in the phrase - don't count spaces
#split the array on the spaces, join it without spaces and get the length 

# GUESSES HANDLE
# while the guesses count in the stored guesses array
#is less than the length of the accurate count of letters/characters in the phrase, ask the user for a guess of a letter

# lower case the guess

# store the guesses in an empty array initialized

# IF THE LETTER IS IN THE PHRASE
# (handle multiples of the same letter in the phrase)
  # does the phrase array include? multiples of letter of the guess?

  #if so #find index of the correct guessed letter (set variable for found index)
  #THEN/OR? MAP TO FIND ALL THE LETTERS THAT MATCH THE GUESS IN THE PHRASE ARRAY => solution I found was: each_with_index enumerable
        
  #put the guessed letter in the BOARD array in all the index places it exists like wheel of fortune

# (handle already guessed letters)
  # if the guessed letter IS in already in the stored guesses array, remove it  

# ??check if the game is over / or won based on if no of guesses, no of letters in the array, and no of _ in board array. ugh!
        
        

