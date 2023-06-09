scoreboard players set #is_valid_portal_id v 1
execute as @e[type=marker,tag=portal] if score @s portal_id = #current_portal_id v run scoreboard players set #is_valid_portal_id v 0
execute if score #is_valid_portal_id v matches 1 run function portal:__private__/anonymous/6
scoreboard players add #current_portal_id v 1
execute if score $id_unset __variable__ matches 1 run function portal:__private__/while_loop/1


# ©2023 by Quinn James
# https://github.com/qcjames53/EasyWorldPortals
# This project is distributed under the GPLv3 license; see LICENSE.txt for more info.