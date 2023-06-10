execute facing entity @p feet rotated ~ 0 run function portal:__private__/anonymous/0
execute facing entity @e[type=marker,tag=portal_r_helper] feet rotated ~ 0 run function portal:__private__/anonymous/1
execute facing entity @e[type=marker,tag=portal_l_helper] feet rotated ~ 0 run function portal:__private__/anonymous/2
execute if score #current_portal_direction v matches 2 run function portal:__private__/anonymous/3
scoreboard players set __if_else__ __variable__ 0
execute if score $rot_to_l __variable__ > $rot_to_player __variable__ if score $rot_to_player __variable__ > $rot_to_r __variable__ run function portal:__private__/if_else/0
execute if score __if_else__ __variable__ matches 0 run function portal:__private__/if_else/1


# ©2023 by Quinn James
# https://github.com/qcjames53/EasyWorldPortals
# This project is distributed under the GPLv3 license; see the LICENSE file for more info.