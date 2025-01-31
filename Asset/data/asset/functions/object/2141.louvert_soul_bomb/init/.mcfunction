#> asset:object/2141.louvert_soul_bomb/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2141/init

# ランダムな方向を向かせる
    tp @s ~ ~ ~ ~ 0
    execute store result entity @s Rotation[0] float 0.01 run random value 0..36000
