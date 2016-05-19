# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # pass in through the method our key value
  # split the items string at instances of spaces
  # set the items string as keys and the associated pair value
  # set default quantity to 1 for each pair value
  # print the list to the console. call the print method to our current list
# output: hash of grocery items and their corresponding quantity values

# Method to add an item to a list
# input: hash, item name and optional quantity 
# steps: pick an item and its corresponding quantity and assign it to a list as a key-value pair
# output: an updated hash with our new key-value pairing using the print method

# Method to remove an item from the list
# input: hash, the key that is going to be removed
# steps: choose the key and its value and removing it from the hash
# output: the new updated hash without the key-value that was removed via the print method

# Method to update the quantity of an item
# input: hash, the key and its new quantity
# steps: overwrite the existing key with its new value pair
# output: updated hash via the print method

# Method to print a list and make it look pretty
# input: the hash
# steps: print statement listing the items and their corresponding quantities
# output: a list of all the items and their quantities

def create_list(grocery_items)
  grocery_list = {}
  grocery_items = grocery_items.split(" ")
  grocery_items.each do |item| 
  grocery_list.store(item, 1)
  end
  puts "This is your grocery list:"
  print_list(grocery_list)
  return grocery_list
end

def add_item(grocery_list_hash, item, quantity)
  grocery_list_hash.store(item, quantity)
  puts "This is your updated grocery list with added items:"
  print_list(grocery_list_hash)
end

def remove_item(remove_hash, item)
  remove_hash.delete(item)
  puts "This is your updated grocery list items removed:"
  print_list(remove_hash)
end

def update_item(update_hash, item, quantity)
  update_hash.store(item, quantity)
  puts "This is your grocery list with updated items:"
  print_list(update_hash)
end

def print_list(current_list)
  current_list.each do |item, quantity|
    puts "Your grocery list has the item #{item} with a quantity of #{quantity}."
  end
end

########################
#### driver code  ######
########################
# create_list("carrots apples cereal pizza")
list = create_list("carrots apples cereal pizza")
add_item(list, "lemonade", 2)
add_item(list, "tomatoes", 3)
add_item(list, "onions", 1)
add_item(list, "ice cream", 4)
remove_item(list, "lemonade")
update_item(list, "ice cream", 1)


=begin
I learned that writing concise and easy to follow pseudocode makes it easy and straightforward for when you have to write the actual code. For the most part, we used hashes in this challenge except at the beginning when we used an array to store the initial grocery items. I imagine having to use arrays to be much more difficult in this circumstance because we would have to align the grocery items to their quantities by index numbers if we used separate arrays. A method returns the result of whatever it manipulates to the argument you passed in it. You can pass anything into a method as an argument as long as it can be stored within a variable. To pass information between methods you must make sure to store the desired information into a variable and call upon it when you want it. The concept that was most thoroughly explained to me in this challenge was how to call information between methods and how to name variables so that information is easier to keep track of. Although it is still very confusing to me, the more and more I practice, the better at naming I am becoming.
=end
  