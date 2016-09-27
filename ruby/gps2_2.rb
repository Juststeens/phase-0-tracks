# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create method that turns string into hash
  # key is item, value is quantity
full_list = nil

def hash_maker(items)
    grocery_list = Hash.new(0)
    items.split(' ').each { |item| grocery_list[item] += 1 }
    return grocery_list
end

full_list = hash_maker("carrots apples cereal pizza pizza")
p full_list


  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
  # output: hash goes here

# Method to add an item to a list
# input: item name and optional quantity
# steps: store output of existing method/list in variable
#        arguments are: list, item, quantity
# output: updated hash
def add_grocery(list, item, quantity = 1)
    list[item] = quantity
end

add_grocery(full_list, 'oreos', 3)
p full_list





# Method to remove an item from the list
# input: item to be removed
# steps: arguments: list, and item to be removed
#        use .delete to remove item from list
# output: updated full list
def remove_item(list, item)
    list.delete(item)
end

remove_item(full_list, 'carrots')
p full_list

# Method to update the quantity of an item
# input: list, item, updated quantity
# steps: arguments: list, item, new quantity
#        set list item to updated quantity
# output: updated full_list
def update_quantity(list, item, quantity)
    list[item] = quantity
end

update_quantity(full_list, 'oreos', 5)
p full_list

# Method to print a list and make it look pretty
# input: full_list hash
# steps: use .each to print items with appropriate quantities
# output: pretty grocery list string

def pretty_list(list)
    list.each {|item, quantity| puts "You need #{quantity} #{item}"}
end

pretty_list(full_list)

# 1. It should be in plain english and simple yet specific enough
# for you and anyone you're working with to understand.
#
# 2. a hash would allow us to set both the item and quatity while an array will automatically
# set an index and won't allow you to set a quantity for the item in under the same variable
#
# 3. A method returns a value depending on what is passed through the method.
#
# 4. by isolating the return value from one method to put through another
#
# 5. cleaning up code and the ability to create a multi function method
# in order to avoid clutter