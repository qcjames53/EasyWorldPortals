# Closes all open portals and fixes up illusion zone
# No inputs
# Run as server or op'd player

scoreboard players set #iz_active v 0
scoreboard players set #iz_last_opened v -1
data merge storage minecraft:portal {iz:{direction:"none"}}

# Illusion zone fixup.
# TODO handle cleanup based on orientation and size
execute as @e[tag=trigger,tag=iz_source] at @s run clone -16 -49 -16 16 -31 16 \
    ~-16 ~-1 ~-16

tag @e[tag=trigger] remove iz_source
tag @e[tag=trigger] remove iz_destination