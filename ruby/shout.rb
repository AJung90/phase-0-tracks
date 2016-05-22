#Declare Shout module with methods

module Shout
  
  def yell_angrily(words)
    words + "!!!"
  end

  def yelling_happily(words)
  	words + "!!!!!"
  end

end

#Add Shout module to Parent and Child classes

class Parent
	include Shout
end

class Child
	include Shout
end

#Driver code
parent = Parent.new
puts parent.yell_angrily("Go to your room")
puts parent.yelling_happily("Awesome job")

child = Child.new
puts child.yelling_happily("Why? I'm having so much fun")
puts child. yell_angrily("Why would you do that???")