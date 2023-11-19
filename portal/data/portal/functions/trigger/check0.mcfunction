# Checks if a player triggered this trigger and responds appropriately
# $say trigger/check0 inputs: $(id) $(tp_id)

$scoreboard players set #tp_id v $(tp_id)
$execute if entity @s[tag=on_trigger] run function \
    portal:trigger/on_trigger/$(id)
$execute if score #tp_id v matches 0.. run function portal:trigger/tp {\
    tp_id:$(tp_id)\
}