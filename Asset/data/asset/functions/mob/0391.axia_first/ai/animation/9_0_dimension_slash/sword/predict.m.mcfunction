#> asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/predict.m
#
# @input args
#   X : Double
#   Z : Double
# @within function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/predict

# マーカー召喚
    $execute positioned ~$(X) ~ ~$(Z) as @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] run function asset:mob/0391.axia_first/ai/projectile/sword/0.summon
