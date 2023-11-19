# Checks if a player triggered this trigger and responds appropriately
# $say trigger/check inputs: $(x_width) $(y_width) $(z_width) $(tp_id)

$data merge storage minecraft:input {tp_id:$(tp_id)}
execute store result storage minecraft:input id int 1 run scoreboard players \
    get @s trigger_id
$execute if entity @p[dx=$(x_width),dy=$(y_width),dz=$(z_width)] run \
    function portal:trigger/check0 with storage minecraft:input