# Set up the source trigger for the illusion zone
# $say portal:portal/open0 inputs: $(tp_id) $(y_width)
# Run as the source trigger entity at position.

tag @s add iz_source
clone ~-16 ~-1 ~-16 ~16 ~17 ~16 -16 -49 -16
execute store result score #iz_source_x v run data get entity @s Pos[0] 1
execute store result score #iz_source_z v run data get entity @s Pos[2] 1

# The height is a clone from -29 + 1(floor) + y_height + 1(y_height offset) = y_height - 27
# (based on scratch area dimensions)
$scoreboard players set #height v $(y_width)
scoreboard players remove #height v 27
execute store result storage minecraft:portal height int 1 run scoreboard players get #height v

# set up destination
$execute as @e[tag=trigger,scores={trigger_id=$(tp_id)}] at @s run \
    function portal:portal/open/destination with storage minecraft:portal