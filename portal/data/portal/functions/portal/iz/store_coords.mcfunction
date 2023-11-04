# Store a set of row, col coordinates to the illusion zone global nbt storage.
# $say portal:portal/iz/store_coords inputs: $(side) $(row) $(col)
# Run as temp marker entity at current block test position.
# Run as active source trigger entity at current raycast position. (or any entity)

$data modify storage minecraft:portal iz.$(side)$(row) set value $(col)