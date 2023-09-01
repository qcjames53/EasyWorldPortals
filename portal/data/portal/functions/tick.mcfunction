# Run every tick
scoreboard players add #tick_count v 1

# check all activated triggers for players
execute as @e[tag=trigger,tag=active] at @s run \
    function portal:trigger/check with entity @s data

# if the illusion zone is active, render
scoreboard players operation #tick_temp v = #tick_count v
scoreboard players operation #tick_temp v %= #iz_mod v
execute if score #iz_active v matches 1 as @e[tag=iz_source,limit=1] at @s run \
    function portal:portal/ticking/source with entity @s data