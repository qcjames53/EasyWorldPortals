# Summons a block display at the current coordinates of given size
# $say helpers/view/trigger_0 inputs: $(x_width) $(y_width) $(z_width) $(block_type) \
    $(x_width_half) $(y_width_half) $(z_width_half) $(id) $(tp_id)

# Show the trigger zone
$summon block_display ~ ~ ~ {\
    Tags:["trigger_marker"],transformation:{\
        left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],\
        scale:[$(x_width)f,$(y_width)f,$(z_width)f]},block_state:{Name:"minecraft:$(block_type)"\
    }\
}

# Show the text description
$execute positioned ~ ~0.25 ~ run summon text_display ~$(x_width_half) ~$(y_width_half) \
    ~$(z_width_half) {billboard:"center",see_through:0b,alignment:"center",Tags:["trigger_desc"],\
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],\
    translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:'{"text":"Trigger $(id) -> $(tp_id)"}'}

# Show a short trail pointing to the destination tp
scoreboard players set #trail_len v 100
$execute positioned ~$(x_width_half) ~$(y_width_half) ~$(z_width_half) facing entity \
    @e[tag=trigger,scores={trigger_id=$(tp_id)},limit=1] feet run \
    function portal:helpers/view/trigger_1 {tp_id:$(tp_id)}