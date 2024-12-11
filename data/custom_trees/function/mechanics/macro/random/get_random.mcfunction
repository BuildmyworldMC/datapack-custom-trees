# Calculate total weights first
function custom_trees:mechanics/macro/random/calculate_weights with storage custom_trees:data root.struct

# Get random weight
execute store result score #random custom_trees run random value 1..
scoreboard players operation #random custom_trees %= #total_weight custom_trees
scoreboard players add #random custom_trees 1

# Setup for finding weighted value
scoreboard players set #current_index custom_trees 0
$data modify storage custom_trees:data temp set from storage custom_trees:data root.trees.$(type)
function custom_trees:mechanics/macro/random/find_weighted

# Rotation Number
execute store result score #rotation custom_trees run random value 0..3
execute store result storage custom_trees:data root.struct.rotation int 1 run scoreboard players get #rotation custom_trees
