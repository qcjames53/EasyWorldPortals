# Render the illusion zone of the active trigger to the nearest player.
# $say portal:portal/iz/source inputs: $(height)
# Run as active source trigger entity at position.

# Reset the clone data
$data modify storage minecraft:portal iz set value {height:$(height)}

# Select the appropriate rt algorithm to get the blocks to clone
function portal:portal/iz/source0 with storage minecraft:portal