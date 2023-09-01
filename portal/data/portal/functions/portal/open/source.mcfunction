# Set up source
tag @s add iz_source
clone ~-16 ~-1 ~-16 ~16 ~17 ~16 -16 -49 -16
execute store result score #iz_source_x v run data get entity @s Pos[0] 1
execute store result score #iz_source_z v run data get entity @s Pos[2] 1

# set up destination
$execute as @e[tag=trigger,scores={trigger_id=$(tp_id)}] at @s run function portal:portal/open/destination with entity @s data