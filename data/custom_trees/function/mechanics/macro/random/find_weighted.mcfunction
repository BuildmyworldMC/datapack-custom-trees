execute store result score #weight custom_trees run data get storage custom_trees:data temp[0].weight
scoreboard players operation #random custom_trees -= #weight custom_trees

execute if score #random custom_trees matches ..0 store result storage custom_trees:data root.struct.file int 1 run scoreboard players get #current_index custom_trees

execute if score #random custom_trees matches 1.. run scoreboard players add #current_index custom_trees 1
execute if score #random custom_trees matches 1.. if data storage custom_trees:data temp[1] run function custom_trees:mechanics/macro/random/find_weighted_next
