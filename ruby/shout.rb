# module Shout
#   def self.yell_angrily(words)
#     puts words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     puts words + "!!!" + " :D"
#   end

# end

# Shout::yell_angrily("Argh")

# Shout::yelling_happily("Yes")

module Shout
  def yell_angrily(words)
    puts words + "!!!" + " >:("
  end
end

class Parent
  include Shout
end

class Teen
  include Shout
end

parent = Parent.new
parent.yell_angrily("Go to your room")

teen = Teen.new
teen.yell_angrily("You don't understand me")




