puts "What is the Hamsters name?"
  name = gets.chomp

puts "What is the Hamsters volume level? 1-10"
  volume = gets.to_i

puts "what is the Hamsters fur color?"
  fur = gets.chomp

puts "good Hamster for adoption?"
  adopt = gets.chomp
    adoptability = adopt == "yes"


puts "Hamsters estimated age?"
  age = gets.chomp
  if age.empty?
    estimated_age = nil
  else
    estimated_age = age.to_i
  end

  puts "The Hamsters name is #{name}, it's volume #{volume}, it's fur color is #{fur}, good for adoption? #{adoptability}. it's estimated age is #{estimated_age}."