scoreboard players set #total_weight custom_trees 0
scoreboard players set #current_index custom_trees -1

$data modify storage custom_trees:data temp set from storage custom_trees:data root.trees.$(type)
function custom_trees:mechanics/macro/random/calculate_weights_recursive
