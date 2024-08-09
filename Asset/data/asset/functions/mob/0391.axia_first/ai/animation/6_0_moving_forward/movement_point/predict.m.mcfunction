#> asset:mob/0391.axia_first/ai/animation/6_0_moving_forward/movement_point/predict.m
#
# 偏差実行
#
# @input args
#   X : Double
#   Z : Double
# @within function asset:mob/0391.axia_first/ai/animation/6_0_moving_forward/movement_point/predict

# マーカーをTP
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..30] run tp @e[type=marker,tag=AV.Marker.Movement,distance=..100] ^ ^ ^ ~ ~
