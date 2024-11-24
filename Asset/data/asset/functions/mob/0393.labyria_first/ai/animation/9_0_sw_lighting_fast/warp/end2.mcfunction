#> asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/warp/end2
#
# 終了時のワープ2
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/
#   asset:mob/0393.labyria_first/ai/animation/100_0_opening/

# 中央にワープ
    execute at @e[type=marker,tag=AX.Marker.SummonPoint,distance=..100] run tp @s ~ ~ ~ ~ 0
    function asset:mob/0393.labyria_first/ai/general/3.teleport_effect/

# 干渉可能に
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable
