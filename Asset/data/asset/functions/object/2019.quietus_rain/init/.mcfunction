#> asset:object/2019.quietus_rain/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2019/init

# マーカーを呼ぶ
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
    
# 演出のためにランダムな方向を向かせる
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000

# TP
    execute at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..64] rotated as 0-0-0-0-0 run tp @s ~ ~ ~ ~ 0

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
