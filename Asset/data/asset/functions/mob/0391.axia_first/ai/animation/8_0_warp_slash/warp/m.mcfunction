#> asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/warp/m
#
# 偏差実行
#
# @input args
#   X : Double
#   Z : Double
# @within function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/warp/

# マーカー召喚
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..30] run summon marker ~ ~ ~ {Tags:["AV.Predict"]}

# TP
    execute as @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] at @e[type=marker,tag=AV.Predict,distance=..64,limit=1] facing entity @p[tag=AV.Temp.Target,tag=!PlayerShouldInvulnerable,distance=..100] feet rotated ~ 0 run function asset:mob/0391.axia_first/ai/general/1.teleport

# マーカー削除
    kill @e[type=marker,tag=AV.Predict,distance=..30]
