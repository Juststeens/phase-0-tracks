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

puts "what is the clients name?"
client = gets.chomp
puts "how old is the client?"
age = gets.chomp
puts "how many children does the client have?"
children = gets.chomp
puts "What will be the decor theme?"
decor = gets.chomp

client_info = {
# :clients_name => client,
# :clients_age => age.to_i,
# :clients_number_children => children.to_i,
# :decor_theme => decor
}

#make hash, no keys
if client != "none"
  client_info[:name] = client
end

if age != "none"
  client_info[:clients_age] = age.to_i
end

if children != "none"
client_info[:clients_number_children] = children.to_i
end

if decor != "none"
  client_info[:decor_theme] = decor
end


puts client_info
puts

puts "Is all of this info correct?"
 correct_info = gets.chomp
 if correct_info == "no"
  puts "What needs to be fixed? Name, Age, number of children, or decor?"
  fix = gets.chomp
else
  puts "information logged!"
end

puts "enter correction"

if fix == "name"
  client = gets.chomp
  client_info[:name] = client
elsif fix ==  "age"
  age = gets.chomp
  client_info[:clients_age] = age.to_i
elsif fix ==  "number of children"
  children = gets.chomp
  client_info[:clients_number_children] = children.to_i
else
  decor = gets.chomp
  client_info[:decor_theme] = decor
end
puts
puts client_info