# Checks if a player triggered this trigger and responds appropriately
# $say trigger/check inputs: $(x_width) $(y_width) $(z_width) $(tp_id)

$scoreboard players set #tp_id v $(tp_id)
$execute if score #tp_id v matches 0.. if entity @p[dx=$(x_width),dy=$(y_width),dz=$(z_width)] run \
    function portal:trigger/tp {tp_id:$(tp_id)}