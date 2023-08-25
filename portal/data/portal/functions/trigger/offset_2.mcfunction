# Determines which direction the player entered the portal from and calculates correct offsets
# for destination with 180 degrees rotation.

# Use rotation matrix math to set rotated offsets
scoreboard players operation #temp_x2 v = #temp_x v
scoreboard players operation #temp_z2 v = #temp_z v
scoreboard players operation #temp_x v *= #-1 v
scoreboard players operation #temp_z v *= #-1 v

scoreboard players set #dir_chosen v 0

# Facing -z (north)
execute if score #dir_chosen v matches 0 if score #temp_z2 v > #source_z_width v run \
    function portal:trigger/offset_2_north

# Facing +x (east)
execute if score #dir_chosen v matches 0 if score #temp_x2 v matches ..0 run \
    function portal:trigger/offset_2_east

# Facing +z (south)
execute if score #dir_chosen v matches 0 if score #temp_z2 v matches ..0 run \
    function portal:trigger/offset_2_south

# Facing -x (west)
execute if score #dir_chosen v matches 0 if score #temp_x2 v > #source_x_width v run \
    function portal:trigger/offset_2_west