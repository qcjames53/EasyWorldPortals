# Teleports the player to the execution position respecting the given offsets.
# $say trigger/tp_0 inputs: $(offset_x) $(offset_y) $(offset_z)

$execute positioned ~$(offset_x) ~$(offset_y) ~$(offset_z) rotated as @p \
    rotated ~$(rotation) ~ as @p run tp @s ~ ~ ~ ~ ~

# TODO - fix up rotation