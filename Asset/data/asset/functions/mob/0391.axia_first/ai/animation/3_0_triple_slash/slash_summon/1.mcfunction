#> asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/slash_summon/1
#
# 斬撃エフェクト召喚1
#
# @within function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/

# Tempタグ付与
    tag @s add AV.Temp.This

# ディスプレイ召喚
    summon item_display ^-0.3 ^1.7 ^1.5 {interpolation_duration:0,Tags:["AV.SlashEffectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[-0.342f,0f,0f,0.9397f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,5f,0.1f]},item:{id:"air",Count:1b}}

# ディスプレイの位置調整
    execute positioned ^-0.3 ^1.7 ^1.5 as @e[tag=AV.SlashEffectInit,distance=..0.1] facing entity @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64,sort=nearest,limit=1] feet rotated ~-90 0 run tp @s ^ ^ ^ ~ ~

# 斬撃エフェクト初期化
    execute positioned ^-0.3 ^1.7 ^1.5 as @e[tag=AV.SlashEffectInit,distance=..0.1] run function asset:mob/0391.axia_first/ai/projectile/slash_effect_mini/1.init.m {Num:-5}

# Tempタグ消去
    tag @s remove AV.Temp.This
