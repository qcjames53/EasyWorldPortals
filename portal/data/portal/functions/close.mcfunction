scoreboard players set __if_else__ __variable__ 0
execute if entity @s[type=marker, tag=portal_active] run function portal:__private__/if_else/4
execute if score __if_else__ __variable__ matches 0 run function portal:__private__/if_else/5


# ©2023 by Quinn James
# https://github.com/qcjames53/EasyWorldPortals
# This project is distributed under the GPLv3 license; see LICENSE.txt for more info.