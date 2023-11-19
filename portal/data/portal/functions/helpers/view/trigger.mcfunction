# Displays the activation box of a trigger. Run as at trigger.
# $say helpers/view/trigger inputs: $(x_width) $(y_width) $(z_width) $(tp_id)
# Run as trigger entity at entity position.

# Add 1 to all the widths so the border displays properly and store half widths for later
$scoreboard players set #t v $(x_width)
scoreboard players add #t v 1
execute store result storage minecraft:portal input.x_width int 1 run scoreboard players get #t v
execute store result storage minecraft:portal input.x_width_half float 0.5 run scoreboard players \
    get #t v
data modify storage minecraft:portal input.x_width_half set string storage minecraft:portal \
    input.x_width_half 0 -1

$scoreboard players set #t v $(y_width)
scoreboard players add #t v 1
execute store result storage minecraft:portal input.y_width int 1 run scoreboard players get #t v
execute store result storage minecraft:portal input.y_width_half float 0.5 run scoreboard players \
    get #t v
data modify storage minecraft:portal input.y_width_half set string storage minecraft:portal \
    input.y_width_half 0 -1

$scoreboard players set #t v $(z_width)
scoreboard players add #t v 1
execute store result storage minecraft:portal input.z_width int 1 run scoreboard players get #t v
execute store result storage minecraft:portal input.z_width_half float 0.5 run scoreboard players \
    get #t v
data modify storage minecraft:portal input.z_width_half set string storage minecraft:portal \
    input.z_width_half 0 -1

# Add trigger properties to params
$scoreboard players set #tp_id v $(tp_id)
execute store result storage minecraft:portal input.id int 1 run scoreboard players get @s \
    trigger_id
execute store result storage minecraft:portal input.tp_id int 1 run scoreboard players get #tp_id v

# Set the display block based on status
#     If active, add green
#     If teleports player, add blue
#     If has trigger event, add red
#     Final color is a blend
execute if score #tp_id v matches -1 unless entity @s[tag=active] unless entity @s[tag=on_trigger] \
    run data modify storage minecraft:portal input merge value {block_type:"black_stained_glass"}
execute if score #tp_id v matches -1 unless entity @s[tag=active] if entity @s[tag=on_trigger] \
    run data modify storage minecraft:portal input merge value {block_type:"red_stained_glass"}
execute if score #tp_id v matches -1 if entity @s[tag=active] unless entity @s[tag=on_trigger] \
    run data modify storage minecraft:portal input merge value {block_type:"lime_stained_glass"}
execute if score #tp_id v matches -1 if entity @s[tag=active] if entity @s[tag=on_trigger] \
    run data modify storage minecraft:portal input merge value {block_type:"yellow_stained_glass"}
execute if score #tp_id v matches 0.. unless entity @s[tag=active] unless entity @s[tag=on_trigger] \
    run data modify storage minecraft:portal input merge value {block_type:"blue_stained_glass"}
execute if score #tp_id v matches 0.. unless entity @s[tag=active] if entity @s[tag=on_trigger] \
    run data modify storage minecraft:portal input merge value {block_type:"magenta_stained_glass"}
execute if score #tp_id v matches 0.. if entity @s[tag=active] unless entity @s[tag=on_trigger] \
    run data modify storage minecraft:portal input merge value {block_type:"cyan_stained_glass"}
execute if score #tp_id v matches 0.. if entity @s[tag=active] if entity @s[tag=on_trigger] \
    run data modify storage minecraft:portal input merge value {block_type:"white_stained_glass"}

function portal:helpers/view/trigger0 with storage minecraft:portal input