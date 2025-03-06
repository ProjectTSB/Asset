#> asset:object/1106.mini_black_hole/tick/explode/
#
#
#
# @within asset:object/1106.mini_black_hole/tick/

# 演出
    execute if score @s General.Object.Tick matches 1 run function asset:object/1106.mini_black_hole/tick/explode/sound
    function asset:object/1106.mini_black_hole/vfx/explode/

# ダメージ
    function asset:object/1106.mini_black_hole/tick/explode/damage/

# 吸い込み
    execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Enemy.Boss,tag=!Uninterferable,distance=..15] run function asset:object/1106.mini_black_hole/tick/explode/suction/
