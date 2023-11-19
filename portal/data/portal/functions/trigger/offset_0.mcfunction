# Determines which direction the player entered the portal from and calculates correct offsets
# for destination with no rotation.

scoreboard players set #dir_chosen v 0

# Facing -z (north)
execute if score #dir_chosen v matches 0 if score #temp_z v > #source_z_width v run \
    function portal:trigger/offset_0_north

# Facing +x (east)
execute if score #dir_chosen v matches 0 if score #temp_x v matches ..0 run \
    function portal:trigger/offset_0_east

# Facing +z (south)
execute if score #dir_chosen v matches 0 if score #temp_z v matches ..0 run \
    function portal:trigger/offset_0_south

# Facing -x (west)
execute if score #dir_chosen v matches 0 if score #temp_x v > #source_x_width v run \
    function portal:trigger/offset_0_west