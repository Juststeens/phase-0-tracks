puts "What is the Hamsters name?"
  name = gets.chomp

puts "What is the Hamsters volume level? 1-10"
  volume = gets.to_i

puts "what is the Hamsters fur color?"
  fur = gets.chomp

puts "good Hamster for adoption?"
  adoption = gets.chomp

  if adopt == "yes"
      adopt = true
  else 
    adopt = false
  end 

puts "Hamsters estimated age?"
  age = gets.chomp
  if age.empty?
    age = nil
  else 
    age = age.to_i

  puts "The Hamsters name is #{name}, it's volume #{volume}, it's fur color is #{fur}, good for adoption? #{adoption}. it's estimated age is #{age}."