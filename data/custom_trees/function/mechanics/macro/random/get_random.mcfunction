# File number
$execute store result score #files custom_trees run data get storage custom_trees:data root.trees.$(type)
execute store result score #random custom_trees run random value 1..
scoreboard players operation #random custom_trees %= #files custom_trees
execute store result storage custom_trees:data root.struct.file int 1 run scoreboard players get #random custom_trees

# Rotation Number
execute store result score #rotation custom_trees run random value 0..3
execute store result storage custom_trees:data root.struct.rotation int 1 run scoreboard players get #rotation custom_trees
