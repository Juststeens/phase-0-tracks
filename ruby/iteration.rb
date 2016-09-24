array = ["Rose", "Dahlia", "Lily", "Iris", "Orchid", "Hibiscus"]

array.each do |flower|
  puts "#{flower} is a very beautiful flower"
end
puts
puts
hash = {
:veggie1 => "broccoli",
:veggie2 => "onion",
:veggie3 => "carrot",
:veggie4 => "cauliflower"
}

hash.each do |key,value|
puts key
puts value
end
puts
puts

array_2 = ["Rose", "Dahlia", "Lily", "Iris", "Orchid", "Hibiscus", "Daisy", "Hydrangea", "Lotus", "Lavender", "Ice plant"]
array_2.delete_if{|flower| flower.length > 6}
puts array_2
puts
puts
hash_2 = {
:veggie1 => "broccoli",
:veggie2 => "onion",
:veggie3 => "carrot",
:veggie4 => "cauliflower"
}
hash_2.delete_if{|ind, veg| veg.length > 6}
puts hash_2
puts
puts

array_3 = ["Rose", "Dahlia", "Lily", "Iris", "Orchid", "Hibiscus", "Daisy", "Hydrangea", "Lotus", "Lavender", "Ice plant"]

array_3.keep_if{|x| x != "Orchid"}
 puts array_3
puts
puts
hash_3 = {
:veggie1 => "broccoli",
:veggie2 => "onion",
:veggie3 => "carrot",
:veggie4 => "cauliflower"
}
hash_3.keep_if{|a, h| h != "broccoli"}
 puts hash_3
 puts
 puts

array_4 = ["Rose", "Dahlia", "Lily", "Iris", "Orchid", "Hibiscus", "Daisy", "Hydrangea", "Lotus", "Lavender", "Ice plant"]

array_4.select!{|flower| flower.include?("a") }
puts array_4
puts
puts

hash_4 = {
:veggie1 => "broccoli",
:veggie2 => "onion",
:veggie3 => "carrot",
:veggie4 => "cauliflower"
}
hash_4.select!{|ind, veg| veg.include?('a') }
puts hash_4
puts
puts

array_5 = ["Rose", "Dahlia", "Lily", "Iris", "Orchid", "Hibiscus", "Daisy", "Hydrangea", "Lotus", "Lavender", "Ice plant"]

array_5.reject!{|flower| flower.include?("e") }
puts array_5

