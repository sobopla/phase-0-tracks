#create a new list
#add an item with a quantity to the list
#remove an item
#update
#Print

# Method to create a list

def create_list(items)
 list = {}
 arr = items.split(' ')#split string into indivdual strings
 arr.each do |item| list[item] = 1 end #iterate over arr in order to pass each string into the list
 	list 
end

p example_list = create_list("apple pear banana")
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 

  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
def add_item(list, food_item, quantity_of_food = 1)
 list[food_item] = quantity_of_food
 list
end 

p add_item(example_list, "bean", 4)
# input: list, item name, and optional quantity
# steps:
# output:

# Method to remove an item from the list
def remove(list, food_item)
	list.delete(food_item)
	list
end
p remove(example_list,"banana")
#p example_list
# input:
# steps:
# output:

# Method to update the quantity of an item
def update(list, food_item, quantity)
	list[food_item] = quantity
	list
end
p update(example_list, "bean", 40)
# input:
# steps:
# output:

# Method to print a list and make it look pretty
def print_list(list)
	list.each {|food,quantity| puts "You need to get #{quantity} of #{food}"}
end
print_list(example_list)
# input:
# steps:
# output:
# 
# What did you learn about pseudocode from working on this challenge?
# What are the tradeoffs of using arrays and hashes for this challenge?
# What does a method return?
# What kind of things can you pass into methods as arguments?
# How can you pass information between methods?
# What concepts were solidified in this challenge, and what concepts are still confusing?


