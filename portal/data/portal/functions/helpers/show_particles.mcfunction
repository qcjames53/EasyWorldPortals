execute at @e[type=marker,tag=portal,scores={portal_direction=-1}] run particle minecraft:dust 1.0 1.0 1.0 1.0
execute at @e[type=marker,tag=portal,scores={portal_direction=0}] run function portal:__private__/anonymous/7
execute at @e[type=marker,tag=portal,scores={portal_direction=1}] run function portal:__private__/anonymous/8
execute at @e[type=marker,tag=portal,scores={portal_direction=2}] run function portal:__private__/anonymous/9
execute at @e[type=marker,tag=portal,scores={portal_direction=3}] run function portal:__private__/anonymous/10
execute at @e[type=marker,tag=portal_l_helper] run particle minecraft:dust 1.0 0.0 1.0 1.0
execute at @e[type=marker,tag=portal_r_helper] run particle minecraft:dust 0.0 1.0 0.0 1.0


# ©2023 by Quinn James
# https://github.com/qcjames53/EasyWorldPortals
# This project is distributed under the GPLv3 license; see LICENSE.txt for more info.