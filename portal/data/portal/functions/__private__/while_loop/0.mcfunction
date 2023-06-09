execute at @s if entity @p[distance=..0.01] run function portal:__private__/anonymous/5
execute as @e[type=marker,tag=portal_tp_helper] at @s run tp @s ^ ^ ^0.01
execute if entity @e[tag=portal_tp_helper] run function portal:__private__/while_loop/0


# ©2023 by Quinn James
# https://github.com/qcjames53/EasyWorldPortals
# This project is distributed under the GPLv3 license; see LICENSE.txt for more info.