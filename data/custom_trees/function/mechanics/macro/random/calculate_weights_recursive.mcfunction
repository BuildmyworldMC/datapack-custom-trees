scoreboard players add #current_index custom_trees 1
execute store result score #weight custom_trees run data get storage custom_trees:data temp[0].weight
scoreboard players operation #total_weight custom_trees += #weight custom_trees

data remove storage custom_trees:data temp[0]
execute if data storage custom_trees:data temp[0] run function custom_trees:mechanics/macro/random/calculate_weights_recursive
