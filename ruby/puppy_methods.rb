class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
  	x.times {
  		puts "Woof!"
  	}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(x)
  	puts x*7
  end

  def shake
  	puts "*shakes hand*"
  end

  def initialize
  	puts "Initializing new puppy instance..."
  end

end 

class Cats

	def meow(x)
		x.times {
			puts "Meow"
		}
	end

	def nap
		puts "*sleeps for days*"
	end

end	

#Driver Code
# charlie = Puppy.new
# puts charlie.fetch("ball")
# puts charlie.speak(3)
# puts charlie.roll_over
# puts charlie.dog_years(2)
# puts charlie.shake
# henry = Cats.new
# puts henry.meow(4)
# puts henry.nap


litterbox = []

x = 0

while x <51
	henry = Cats.new
	litterbox.push(henry)
  x +=1
end
	puts litterbox

puts "iterating through henry"
litterbox.each do |henry| 
	henry.meow(1)
	henry.nap
	end

# def update_hash(litterbox, x)
# 	litterbox = {}
# 	henry_box = litterbox.store(litterbox, x)
# 	puts henry_box
# end

# puts update_hash(henry, x)