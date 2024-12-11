$data modify storage custom_trees:data root.struct.type set from storage custom_trees:data root.mappings[].$(block).type

function custom_trees:mechanics/macro/random/get_random with storage custom_trees:data root.struct
function custom_trees:mechanics/macro/random/get_data with storage custom_trees:data root.struct
