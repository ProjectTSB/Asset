#> asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/predict/m
#
# 偏差実行
#
# @input args
#   X : Double
#   Z : Double
# @within function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/predict/

# マーカー召喚
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..30] run summon marker ~ ~ ~ {Tags:["AW.Predict"]}

# 向き調整
    execute as @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] at @s facing entity @e[type=marker,tag=AW.Predict,distance=..64,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0

# マーカー削除
    kill @e[type=marker,tag=AW.Predict,distance=..30]
