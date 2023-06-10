execute at @s run clone ~-15 ~-1 ~-15 ~15 ~5 ~15 -15 0 -15
scoreboard players operation #current_portal_direction v = @s portal_direction
scoreboard players operation #current_portal_target v = @s portal_target
scoreboard players operation #current_portal_open_on_travel v = @s portal_open_on_travel
execute as @e[type=minecraft:marker,tag=portal] if score #current_portal_target v = @s portal_id at @s run clone ~-15 ~-1 ~-15 ~15 ~5 ~15 -15 10 -15
tag @s add portal_active
execute if score @s portal_direction matches 0 at @s run function portal:__private__/anonymous/19
execute if score @s portal_direction matches 1 at @s run function portal:__private__/anonymous/25
execute if score @s portal_direction matches 2 at @s run function portal:__private__/anonymous/31
execute if score @s portal_direction matches 3 at @s run function portal:__private__/anonymous/37
scoreboard players set __if_else__ __variable__ 1


# ©2023 by Quinn James
# https://github.com/qcjames53/EasyWorldPortals
# This project is distributed under the GPLv3 license; see the LICENSE file for more info.