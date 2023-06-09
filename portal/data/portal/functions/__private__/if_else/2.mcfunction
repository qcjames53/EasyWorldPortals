execute at @s run clone ~-10 ~-1 ~-10 ~10 ~3 ~10 -10 0 -10
scoreboard players operation #current_portal_direction v = @s portal_direction
scoreboard players operation #current_portal_target v = @s portal_target
execute as @e[type=minecraft:marker,tag=portal] if score #current_portal_target v = @s portal_id at @s run clone ~-10 ~-1 ~-10 ~10 ~3 ~10 -10 10 -10
tag @s add portal_active
execute if score @s portal_direction matches 0 at @s run function portal:__private__/anonymous/17
execute if score @s portal_direction matches 1 at @s run function portal:__private__/anonymous/21
execute if score @s portal_direction matches 2 at @s run function portal:__private__/anonymous/25
execute if score @s portal_direction matches 3 at @s run function portal:__private__/anonymous/29
scoreboard players set __if_else__ __variable__ 1


# ©2023 by Quinn James
# https://github.com/qcjames53/EasyWorldPortals
# This project is distributed under the GPLv3 license; see LICENSE.txt for more info.