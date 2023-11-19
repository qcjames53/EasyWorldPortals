# Teleports the player from the source trigger to the destination trigger, 
#   respecting all offsets.
# $say trigger/tp inputs: $(tp_id)

# Get the x y z of the source trigger (scaled)
execute store result score #trigger_source_x v run data get entity @s Pos[0] 100
execute store result score #trigger_source_y v run data get entity @s Pos[1] 100
execute store result score #trigger_source_z v run data get entity @s Pos[2] 100

# Get the x y z of the player
execute store result score #temp_x v run data get entity @p Pos[0] 100
execute store result score #temp_y v run data get entity @p Pos[1] 100
execute store result score #temp_z v run data get entity @p Pos[2] 100

# Find the player offset
scoreboard players operation #temp_x v -= #trigger_source_x v
scoreboard players operation #temp_y v -= #trigger_source_y v
scoreboard players operation #temp_z v -= #trigger_source_z v

# Get source and destination trigger properties + convert to usable units
execute store result score #tp_rotation v run data get entity @s \
    data.tp_rotation 1
execute store result score #source_x_width v run data get entity @s \
    data.x_width 100
execute store result score #source_z_width v run data get entity @s \
    data.z_width 100
$execute as @e[tag=trigger,scores={trigger_id=$(tp_id)},limit=1] store result \
    score #destination_x_width v run data get entity @s data.x_width 100
$execute as @e[tag=trigger,scores={trigger_id=$(tp_id)},limit=1] store result \
    score #destination_z_width v run data get entity @s data.z_width 100
scoreboard players add #source_x_width v 100
scoreboard players add #source_z_width v 100
scoreboard players add #destination_x_width v 100
scoreboard players add #destination_z_width v 100

# Find the final offset
execute if score #tp_rotation v matches 0 run function portal:trigger/offset_0
execute if score #tp_rotation v matches 1 run function portal:trigger/offset_1
execute if score #tp_rotation v matches 2 run function portal:trigger/offset_2
execute if score #tp_rotation v matches 3 run function portal:trigger/offset_3

# Add offsets + rotation storage and convert to string (trimming extra f)
execute store result storage minecraft:portal input.offset_x float 0.01 run \
    scoreboard players get #temp_x v
execute store result storage minecraft:portal input.offset_y float 0.01 run \
    scoreboard players get #temp_y v
execute store result storage minecraft:portal input.offset_z float 0.01 run \
    scoreboard players get #temp_z v
execute store result storage minecraft:portal input.rotation int 90 run \
    scoreboard players get #tp_rotation v
data modify storage minecraft:portal input.offset_x set string storage \
    minecraft:portal input.offset_x 0 -1
data modify storage minecraft:portal input.offset_y set string storage \
    minecraft:portal input.offset_y 0 -1
data modify storage minecraft:portal input.offset_z set string storage \
    minecraft:portal input.offset_z 0 -1

# debug offset display
#tellraw @a [\
#    {"text":"Offset: "},\
#    {"storage":"minecraft:portal","nbt":"input.offset_x"},\
#    {"text":" "},\
#    {"storage":"minecraft:portal","nbt":"input.offset_y"},\
#    {"text":" "},\
#    {"storage":"minecraft:portal","nbt":"input.offset_z"}\
#]

# Put all in storage and call actual tp
$execute as @e[tag=trigger,scores={trigger_id=$(tp_id)},limit=1] at @s run \
    function portal:trigger/tp_0 with storage minecraft:portal input

# if the player is teleporting from a iz_source, close the portal
$data merge storage minecraft:portal {tp_id:$(tp_id)}
$execute if entity @s[tag=iz_source] as \
    @e[tag=trigger,scores={trigger_id=$(tp_id)},limit=1] at @s run function \
    portal:trigger/tp_1 with storage minecraft:portal
