function portal:close
summon marker ~ ~ ~ {Tags:["portal_tp_helper","portal_tp_helper_a"]}
execute as @e[type=marker,tag=portal_tp_helper_a] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
scoreboard players operation #current_portal_target v = @s portal_target
execute as @e[type=minecraft:marker,tag=portal] if score #current_portal_target v = @s portal_id at @s run function portal:__private__/anonymous/4
execute as @e[type=marker,tag=portal_tp_helper_a] if entity @s run function portal:__private__/while_loop/0
kill @e[type=marker,tag=portal_tp_helper]


# ©2023 by Quinn James
# https://github.com/qcjames53/EasyWorldPortals
# This project is distributed under the GPLv3 license; see the LICENSE file for more info.