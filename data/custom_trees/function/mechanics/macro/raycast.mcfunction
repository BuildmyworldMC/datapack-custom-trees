$execute align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ $(block) run function custom_trees:mechanics/macro/block_pos {"block":"$(block)"}
$execute if entity @s[distance=..8] unless block ~ ~ ~ $(block) positioned ^ ^ ^0.01 run function custom_trees:mechanics/macro/raycast {"block":"$(block)"}
