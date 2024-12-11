$data modify storage custom_trees:data root.struct.name set from storage custom_trees:data root.trees.$(type)[$(file)].file
$data modify storage custom_trees:data root.struct.rotation set from storage custom_trees:data root.rotations[$(rotation)]

# Get base offsets
$execute store result score #offsetX custom_trees run data get storage custom_trees:data root.trees.$(type)[$(file)].offsetX
$execute store result score #offsetZ custom_trees run data get storage custom_trees:data root.trees.$(type)[$(file)].offsetZ

execute if score #rotation custom_trees matches 0 run scoreboard players operation #posX custom_trees = #offsetX custom_trees
execute if score #rotation custom_trees matches 0 run scoreboard players operation #posZ custom_trees = #offsetZ custom_trees
execute if score #rotation custom_trees matches 0 run scoreboard players operation #posX custom_trees *= #-1 custom_trees
execute if score #rotation custom_trees matches 0 run scoreboard players operation #posZ custom_trees *= #-1 custom_trees

execute if score #rotation custom_trees matches 1 run scoreboard players operation #posX custom_trees = #offsetZ custom_trees
execute if score #rotation custom_trees matches 1 run scoreboard players operation #posZ custom_trees = #offsetX custom_trees
execute if score #rotation custom_trees matches 1 run scoreboard players operation #posZ custom_trees *= #-1 custom_trees

execute if score #rotation custom_trees matches 2 run scoreboard players operation #posX custom_trees = #offsetX custom_trees
execute if score #rotation custom_trees matches 2 run scoreboard players operation #posZ custom_trees = #offsetZ custom_trees

execute if score #rotation custom_trees matches 3 run scoreboard players operation #posX custom_trees = #offsetZ custom_trees
execute if score #rotation custom_trees matches 3 run scoreboard players operation #posZ custom_trees = #offsetX custom_trees
execute if score #rotation custom_trees matches 3 run scoreboard players operation #posX custom_trees *= #-1 custom_trees

execute store result storage custom_trees:data root.struct.posX int 1 run scoreboard players get #posX custom_trees
execute store result storage custom_trees:data root.struct.posZ int 1 run scoreboard players get #posZ custom_trees
data modify storage custom_trees:data root.struct.posY set value -1