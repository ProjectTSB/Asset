#> asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/warp/m
#
# 偏差実行
#
# @input args
#   X : Double
#   Z : Double
# @within function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/warp/

# マーカー召喚
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..30] run summon marker ~ ~ ~ {Tags:["AX.Predict"]}

# TP
    execute as @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] at @e[type=marker,tag=AX.Predict,distance=..64,limit=1] facing entity @p[tag=AX.Temp.Target,distance=..100] feet rotated ~ 0 run function asset:mob/0393.labyria_first/ai/general/1.teleport

# マーカー削除
    kill @e[type=marker,tag=AX.Predict,distance=..30]
