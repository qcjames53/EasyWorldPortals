scoreboard players operation @e[type=marker,tag=portal,sort=nearest,limit=1] portal_id = #current_portal_id v
scoreboard players set $id_unset __variable__ 0
tellraw @a [{"text":"Set portal id as "},{"score":{"name":"#current_portal_id","objective":"v"}}]


# ©2023 by Quinn James
# https://github.com/qcjames53/EasyWorldPortals
# This project is distributed under the GPLv3 license; see LICENSE.txt for more info.