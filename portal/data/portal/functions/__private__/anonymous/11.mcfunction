summon text_display ~ ~0.5 ~ {billboard:"center",Tags:["portal_id_text"],text:'{"text":"foo"}'}
scoreboard players operation @e[type=text_display,sort=nearest,limit=1] portal_id = @s portal_id
scoreboard players operation @e[type=text_display,sort=nearest,limit=1] portal_target = @s portal_target
data merge entity @e[type=minecraft:text_display,sort=nearest,limit=1] {text:'[{"score":{"name":"@s","objective":"portal_id"}},{"text":" -> "},{"score":{"name":"@s","objective":"portal_target"}}]'}
execute if entity @s[tag=portal_active] run data merge entity @e[type=minecraft:text_display,sort=nearest,limit=1] {text:'[{"score":{"name":"@s","objective":"portal_id"}, "color":"red"},{"text":" -> "},{"score":{"name":"@s","objective":"portal_target"}}]'}


# ©2023 by Quinn James
# https://github.com/qcjames53/EasyWorldPortals
# This project is distributed under the GPLv3 license; see the LICENSE file for more info.