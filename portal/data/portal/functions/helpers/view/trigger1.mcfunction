# Recursively display debug trails between source and destination trigger 
#   entity.
# $say helpers/view/trigger1 inputs: $(tp_id)
# Run as source trigger entity at current raycast position.

summon block_display ~ ~ ~ {\
    Tags:["trigger_tp_marker"],\
    transformation:{\
        left_rotation:[0f,0f,0f,1f],\
        right_rotation:[0f,0f,0f,1f],\
        translation:[0f,0f,0f],\
        scale:[0.05f,0.05f,0.05f]\
    },\
    block_state:{Name:"minecraft:blue_concrete"}\
}
scoreboard players remove #trail_len v 1
$execute if score #trail_len v matches 1.. unless entity \
    @e[tag=trigger,distance=..1,scores={trigger_id=$(tp_id)}] positioned \
    ^ ^ ^0.75 run function portal:helpers/view/trigger1 {tp_id:$(tp_id)}