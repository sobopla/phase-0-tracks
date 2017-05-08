module Shout # add method for yelling angrily and yelling_happily
  
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end


  def self.yelling_happily(words)
      words + " YAY!"
  end

end

p Shout.yell_angrily('words')
p Shout.yelling_happily('happy happy')