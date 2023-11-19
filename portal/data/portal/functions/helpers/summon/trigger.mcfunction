# Triggers are volumes of x*y*z blocks which can be used to silently TP the player or run custom
# scripts. They are the foundation of rendering illusion zones for impossible world geometry.
#
# Properties:
#   Marker entity with 'trigger' tag. Activated by adding/removing 'active' tag.
#   Location: x, y, z at the lowest coords in the volumes
#   Width: x_width, y_width, z_width integer zero or above. Zero equates to width of one block.
#   trigger_id: Scoreboard of trigger id. Set automatically at summon.
#   tp_id: Trigger where to tp player. Set to -1 to disable tp.
#   tp_rotation: Scoreboard of 0-4 refresenting angle * 90deg to rotate the teleport right (cw).
#   Trigger the portal:trigger/on_trigger/<trigger_id> script by adding 'on_trigger' tag.
#
# $say portal:portal/helpers/summon/trigger inputs: $(x_width) $(y_width) $(z_width)
# Run as an op'd player located where you would like the corner of the trigger to spawn.

# Find next available trigger_id
scoreboard players set #current_trigger_id v 0
function portal:helpers/summon/trigger_0

$execute at @s align xyz run summon marker ~ ~ ~ {\
    Tags:["trigger"],data:{\
        x_width:$(x_width), y_width:$(y_width), z_width:$(z_width), tp_id:-1, tp_rotation:0\
    }\
}
scoreboard players operation @e[tag=trigger,sort=nearest,limit=1] trigger_id = #current_trigger_id v
tellraw @a [{"text":"Summoned trigger "},{"score":{"name":"#current_trigger_id","objective":"v"}}]
function portal:helpers/info_view