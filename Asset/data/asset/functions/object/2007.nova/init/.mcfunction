#> asset:object/2007.nova/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2007/init

# ランダムな方向を向かせる（Y軸は固定）
    execute store result entity @s Rotation[0] float 0.01 run random value 0..36000
    execute store result score $2007.Temp Temporary run random value 0..36000
    execute on passengers store result entity @s Rotation[0] float 0.01 run scoreboard players get $2007.Temp Temporary
    execute on passengers on passengers store result entity @s Rotation[0] float 0.01 run scoreboard players get $2007.Temp Temporary
    execute on passengers on passengers on passengers store result entity @s Rotation[0] float 0.01 run scoreboard players get $2007.Temp Temporary

# タグセット
    tag @s add 2007.NovaCore

# スコアリセット
    scoreboard players reset $2007.Temp Temporary
