# Find the lowest available trigger_id (recursively) and return as #current_trigger_id v
# No inputs
# Run as op'd player.

scoreboard players set #valid_id v 1
execute as @e[tag=trigger] if score @s trigger_id = #current_trigger_id v run \
    scoreboard players set #valid_id v 0    
execute if score #valid_id v matches 0 run scoreboard players add #current_trigger_id v 1
execute if score #valid_id v matches 0 run function portal:helpers/summon/trigger_0