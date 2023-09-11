# Reset the clone data
$data modify storage minecraft:portal iz set value {height:$(height)}

# Run the appropriate rt algorithm to get the blocks to clone
function portal:portal/iz/source0 with storage minecraft:portal