scoreboard players set __if_else__ __variable__ 0
execute unless entity @e[type=marker, tag=portal_active] run function portal:__private__/if_else/2
execute if score __if_else__ __variable__ matches 0 run function portal:__private__/if_else/3


# ©2023 by Quinn James
# https://github.com/qcjames53/EasyWorldPortals
# This project is distributed under the GPLv3 license; see the LICENSE file for more info.