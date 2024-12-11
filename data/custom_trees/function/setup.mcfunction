scoreboard objectives add custom_trees dummy
scoreboard players set #-1 custom_trees -1

data remove storage custom_trees:data root

# Add rotation mappings
data modify storage custom_trees:data root.rotations append value "NONE"
data modify storage custom_trees:data root.rotations append value "CLOCKWISE_90"
data modify storage custom_trees:data root.rotations append value "CLOCKWISE_180"
data modify storage custom_trees:data root.rotations append value "COUNTERCLOCKWISE_90"

data modify storage custom_trees:data root.mappings append value {"birch_sapling":{"type":"birch"}}

data modify storage custom_trees:data root.trees.birch append value {"file":"big_1","offsetX":5,"offsetZ":6,"weight":1}
data modify storage custom_trees:data root.trees.birch append value {"file":"lil_1","offsetX":1,"offsetZ":2,"weight":1}
data modify storage custom_trees:data root.trees.birch append value {"file":"lil_2","offsetX":1,"offsetZ":0,"weight":1}
data modify storage custom_trees:data root.trees.birch append value {"file":"mid_1","offsetX":4,"offsetZ":4,"weight":1}
data modify storage custom_trees:data root.trees.birch append value {"file":"mid_2","offsetX":2,"offsetZ":4,"weight":1}
data modify storage custom_trees:data root.trees.birch append value {"file":"mid_3","offsetX":6,"offsetZ":5,"weight":1}
data modify storage custom_trees:data root.trees.birch append value {"file":"mid_4","offsetX":3,"offsetZ":3,"weight":1}
