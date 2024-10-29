#> asset:object/2002.lighting_fast/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2002/init

# ランダムな方向を向かせる（Y軸は固定）
    execute store result entity @s Rotation[0] float 0.01 run random value 0..36000
    execute at @s run tp @s ~ ~ ~ ~ 0
