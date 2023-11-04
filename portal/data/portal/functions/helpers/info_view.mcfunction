# A helper function to show all triggers and trigger properties as display entities.
# No inputs
# Run as op'd player.

function portal:helpers/info_hide
execute as @e[tag=trigger] at @s run function portal:helpers/view/trigger with entity @s data