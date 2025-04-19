#> asset:object/2208.eclael_slash_vfx/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2208/init

# 地面用演出
    execute if data storage asset:context this.IsLand run tag @s add 2208.IsLand
    execute if entity @s[tag=2208.IsLand] run data merge entity @s {billboard:"fixed",transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

# left_rotationをランダムに設定
    execute unless entity @s[tag=2208.IsLand] store result storage asset:temp 2208.Angle float 0.01 run random value -150..150
    execute if entity @s[tag=2208.IsLand] store result storage asset:temp 2208.Angle float 1 run random value -90..90
    function asset:object/2208.eclael_slash_vfx/init/set_rotation.m with storage asset:temp 2208
    data remove storage asset:temp 2208
