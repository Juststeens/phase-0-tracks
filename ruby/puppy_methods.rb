class Puppy


  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(bark)
    bark.times do
      puts "woof"
    end
  end

  def roll_over
    puts "*Rolls over*"
  end

  def dog_years(years)
    p years * 4
  end

  def sit
    puts "*sits*"
  end

  def initialize
    puts 'Initializing new puppy instance ...'
  end
end
# Puppy.new.sit
# Puppy.new.dog_years(21)
# Puppy.new.roll_over
# Puppy.new.speak(3)


class Gymnast
  def flip
    puts "*does flip*"
  end

  def jump
    puts "*does jump*"
  end

  def pommelhorse
    puts "*does rotation*"
  end
end

fifty_shades_of_instance = Array.new

Gymnast.new.flip
Gymnast.new.jump
Gymnast.new.pommelhorse

index = 0
while index < 50
fifty_shades_of_instance[index] = Gymnast.new
p fifty_shades_of_instance
index += 1
end

fifty_shades_of_instance.each do |grey|
grey.jump
grey.flip
grey.pommelhorse
end

# fifty_shades_of_instance.each do |grey|
#  puts grey Gymnast.new.flip
#  puts grey Gymnast.new.jump
#  puts grey Gymnast.new.pommelhorse
# end
# loop over our class 50 times
# store each instance in a data structure
#
#
#
#