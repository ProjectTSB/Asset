#> asset:effect/0402.celestial_star/tick/vfx/bug/draw.m
#
# 実行位置から指定した向きと距離の位置に、黄色の光を描く
#
# @input args
#   Yaw : int
#   Pitch : int
#   Distance : double
# @within function asset:effect/0402.celestial_star/tick/vfx/bug/

    $execute rotated $(Yaw) $(Pitch) positioned ^ ^ ^$(Distance) run particle dust 1 0.85 0.25 0.45 ~ ~ ~ 0 0 0 0 1
