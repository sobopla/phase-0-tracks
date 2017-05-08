module Shout # add method for yelling angrily and yelling_happily
  
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end


  def self.yelling_happily(words)
      words + " YAY!"
  end

end
# # Add driver code underneath your module declaration that calls both of your module methods.
# p Shout.yell_angrily('words')
# p Shout.yelling_happily('happy happy')

# 1. Comment out the old code in shout.rb, and make a mixin version of the Shout module instead.
# 
module Shout
  def shout(song)
    puts '```' + song.upcase + '```'
  end

class Sixties_Songs # 2. Write two classes representing anything that might shout, and include the Shout module in those classes.
  include Shout
end

class Eighties_Songs
  include Shout
end

isley_brothers = Sixties_Songs.new
isley_brothers.shout("you know you make me wanna shout")

tears_for_fears = Eighties_Songs.new
tears_for_fears.shout("Shout shout let it all out..")