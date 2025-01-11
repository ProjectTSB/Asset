#> asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/warp/end1
#
# 終了時のワープ1
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/
#   asset:mob/0393.labyria_first/ai/animation/100_0_opening/

# 中央にワープ
    execute at @e[type=marker,tag=AX.Marker.SummonPoint,distance=..100] run tp 0-0-0-0-0 ~ ~ ~ ~ 0
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000
    execute at 0-0-0-0-0 positioned ^ ^ ^30 run tp @s ~ ~ ~ ~ 0

# リセット
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
