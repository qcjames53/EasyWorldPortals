# Opens a world portal at a given trigger in a given direction. Rejects duplicate requests.
# $say portal:portal/open inputs: $(trigger_id) $(direction)
# Run as server or op'd player

$execute unless score #iz_last_opened v matches $(trigger_id) run function portal:portal/open0 {\
    trigger_id:$(trigger_id), direction:$(direction)}
$execute if score #iz_last_opened v matches $(trigger_id) run tellraw @a[tag=portal_log] {\
    "color":"red", "text":"Consecutive portal open. Skipping id $(trigger_id)"}
$scoreboard players set #iz_last_opened v $(trigger_id)