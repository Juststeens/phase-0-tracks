# data is gets.chomp'd
# stored in hash and converted to appropriate format
# print hash
# clients_name => client
# clients_age => age.to_i
# clients_number_children => children.to_i
# decor_theme => decor
#use an if statment or single loop to update hash?
# gets.chomp for all information needed to fill out form
# if "none" skip it

# print updated hash

client_info = {}

puts "What is the client's name?"
client_info[:name] = gets.chomp
puts "How old is the client?"
client_info[:age] = gets.chomp
puts "How many children does the client have?"
client_info[:number_of_children] = gets.chomp
puts "What will be the decor theme?"
client_info[:decor] = gets.chomp


# delete any key/values that are "none"
require "pry"
binding.pry
client_info.keep_if{|key,value|value != "none" }

puts client_info
puts

correct_info = nil

until correct_info == "yes" do
  puts "Is all of this info correct?"
  correct_info = gets.chomp

  if correct_info == "no"
    puts "What needs to be fixed? Name, Age, number of children, or decor?"
    fix = gets.chomp
    puts "enter correction"
    client_info[fix.tr(" ","_").to_sym.downcase] = gets.chomp
    puts client_info
  else
    puts "information logged!"
  end

end

puts