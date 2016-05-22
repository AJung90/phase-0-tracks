#Declare Shout module with methods

module Shout
  
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + "!!!!!" + " :)"
  end

end

#Driver code
puts Shout.yell_angrily("What the heck")
puts Shout.yelling_happily("This is a blast")