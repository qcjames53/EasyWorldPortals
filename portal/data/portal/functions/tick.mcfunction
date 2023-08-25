# Run every tick

# check all activated triggers for players
execute as @e[tag=trigger,tag=active] at @s run \
    function portal:trigger/check with entity @s data