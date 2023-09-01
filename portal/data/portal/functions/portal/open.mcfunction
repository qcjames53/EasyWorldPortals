# Opens a world portal at a given trigger in a given direction
# $say portal:portal/open inputs: $(trigger_id) $(direction)

# close all Portals
function portal:portal/close_all

$execute as @e[tag=trigger,scores={trigger_id=$(trigger_id)}] at @s run function portal:portal/open/source with entity @s data
scoreboard players set #iz_active v 1