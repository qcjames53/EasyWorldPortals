execute if score @s portal_direction matches 0 at @s run clone -15 0 -15 15 6 -1 ~-15 ~-1 ~-15
execute if score @s portal_direction matches 1 at @s run clone 1 0 -15 15 6 15 ~1 ~-1 ~-15
execute if score @s portal_direction matches 2 at @s run clone -15 0 15 15 6 1 ~-15 ~-1 ~1
execute if score @s portal_direction matches 3 at @s run clone -15 0 -15 -1 6 15 ~-15 ~-1 ~-15
tag @s remove portal_active
kill @e[type=marker,tag=portal_l_helper]
kill @e[type=marker,tag=portal_r_helper]
scoreboard players set __if_else__ __variable__ 1


# ©2023 by Quinn James
# https://github.com/qcjames53/EasyWorldPortals
# This project is distributed under the GPLv3 license; see the LICENSE file for more info.