# ask for name 
# variable to name = name


# convert space to space? so it's not a !
	# use .split(' '')

# split name into 2 arrays with the space split
# puts name into an array 
	#name array = name.split(' ')

#reverse the order of the names
	#name array reverse with !

#alias array is now the name array(permanently reversed)
#alias filler is an empty string

# get index of vowels
 	#change vowels
	# if letter is a vowel change to next vowel
	# add vowels to alias filler
	#forward letters to next letter
	#when letter is not a vowel change to next letter
	#add letter to alias filler
	#???
#aliasfiller is the  alias
 puts "What is your fname" 
 fullname = gets.chomp
 fullname_arr = fullname.split('')
 p fullname_arr
 name_arr = [] 
 p name_arr
 fullname_arr.reverse!
 p fullname_arr
 fullname_arr.map! {|letter| letter.next }
 fullname
 
 alias_str = fullname_arr.join(' ')
 puts alias_str

 #---------------------------
 #vowel segment stuck here
vowels ='aeiou'
newword = ""
fullname_arr = fullname.map do |place| #place of the letter

    #if vowels.include?(letter)
      i = vowels.index(letter)
      if i == 4
        nextvowel = vowels[0] #for last vowel to go to first vowel
      else 
        nextvowel = vowels[i+1] # goes to next vowel
      end
newword << nextvowel # somehow get the letters into the newword
    elsif 
      i != vowels # if letter is not a vowel go to next leter(wanted to skip using consonants here but would that create a loop problem?)
     #go to next letter
   end
   #has to be a consonant ? how do I get the non vowels << to newword?

   #this is as far as I got . I struggled with this because of time. It is the week that I quit my job and so I still did not have enough time to learn in chuncks without being broken up 
   #or interrupted from one module to the next.
   #meaning everything I did was scattered about. Either the pairings I had did not finish,only had an hour  and/or I had to complete them alone while also completing other modules
   #simultaneously, etc. This is hard for me and feel I need more guidance and one on one with instructors, not students who
   #do not know how to tell me what I am struggling with since they are not experts in the big picture of the language. Office hours are limited. And were limited
   #to when I was not working AND when other students were done asking their questions. 
   #Please advise. 









