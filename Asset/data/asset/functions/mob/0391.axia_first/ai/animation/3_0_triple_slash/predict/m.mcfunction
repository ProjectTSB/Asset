#> asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/predict/m
#
# 偏差実行
#
# @input args
#   X : Double
#   Z : Double
# @within function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/predict/

# マーカー召喚
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..30] run summon marker ~ ~ ~ {Tags:["AV.Predict"]}

# 向き調整
    execute as @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] at @s facing entity @e[type=marker,tag=AV.Predict,distance=..64,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0

# マーカー削除
    kill @e[type=marker,tag=AV.Predict,distance=..30]
