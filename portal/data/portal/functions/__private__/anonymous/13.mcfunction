execute if score @s portal_direction matches 0 run function portal:computations/tick_n
execute if score @s portal_direction matches 1 run function portal:computations/tick_e
execute if score @s portal_direction matches 2 run function portal:computations/tick_s
execute if score @s portal_direction matches 3 run function portal:computations/tick_w


# ©2023 by Quinn James
# https://github.com/qcjames53/EasyWorldPortals
# This project is distributed under the GPLv3 license; see LICENSE.txt for more info.